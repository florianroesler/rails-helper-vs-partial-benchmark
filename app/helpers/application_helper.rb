module ApplicationHelper
  def helper_benchmark
    capture do
      20_000.times do
        time = Time.current
        concat(
          tag.div(class: 'test') do
            concat tag.div(time.nsec, class: 'inner')
          end
        )
      end
    end
  end
end
