module Timeline
  class Runner
    def initialize(options)
      @options = options
    end

    def execute
      results = []
      `git checkout -q #{@options[:branch] || "master"}`

      log_options = []
      log_options << "-n #{@options[:limit]}" if @options[:limit]
      log_options << @options[:revisions] if @options[:revisions]
      commits = `git log --format="%H" #{log_options.join}`.split
      commits.each do |commit|
        `git checkout -q #{commit}`
        result = `#{@options[:command]}`.strip
        if @options[:filter]
          match = result.match(/(#{@options[:filter]})/)
          result = ""
          result = match[1] if match && match.length > 0
        end

        subject = "\"#{`git show -s --format="%s"`.strip}\""
        timestamp = `git show -s --format="%ct"`.to_i
        time = Time.at(timestamp).utc.strftime("%Y-%m-%d %H:%M:%S")
        results << [time, result, subject, commit]
      end

      # Return to the branch
      `git checkout -q #{@options[:branch] || "master"}`

      lines = results.map { |line| line.join(",") }.join("\n")
      if @options[:output]
        File.open(@options[:output], "w") { |f| f.write(lines) }
      else
        puts lines
      end
    end
  end
end
