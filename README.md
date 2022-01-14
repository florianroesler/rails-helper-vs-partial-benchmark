This repository contains a Rails application to benchmark various partial rendering options in Rails, explained in [https://floro.rocks/posts/rails-helper-vs-partials-performance-benchmark/](https://floro.rocks/posts/rails-helper-vs-partials-performance-benchmark/).

# Run the server

To allow reproducible results, the benchmark suite is based on Docker and can be started using docker-compose:

`docker-compose up`

This will spawn a Rails server that can be accessed on your local machine at [http://localhost:8080](http://localhost:8080). From there you will see the different test cases that you can execute and that will return the measured time.

# Results on my machine

| Test Case               | Arithmetic Mean | Standard Deviation | Relative Standard Deviation | Normalized Relative Execution Time |
| :-------------          |-------------:| -----:                | -----:                      | -----:                             |
| Looped HTML             | 0.37s | 0.0050 | 1.36% | 1.00 |
| Helper with loop inside | 1.18s | 0.0184 | 1.56% | 3.21 |
| Looped Helper           | 1.23s | 0.0074 | 0.61% | 3.33 |
| Collection Partial      | 1.03s | 0.0129 | 1.25% | 2.80 |
| Looped Partial          | 2.85s | 0.1064 | 3.74% | 7.72 |
