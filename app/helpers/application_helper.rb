module ApplicationHelper
  N_RUNS = 100_000

  def helper_benchmark
    capture do
      N_RUNS.times do
        time = Time.current
        concat(
          tag.div(class: 'test') do
            concat tag.div(time.nsec, class: 'inner')
          end
        )
      end
    end
  end

  def helper_partial
    time = Time.current
    tag.div(class: 'test') do
      concat tag.div(time.nsec, class: 'inner')
    end
  end
end
