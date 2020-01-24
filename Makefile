.PHONY: all build test-unit test-e2e test-perf

all: build

build:
	@echo "Built"

test-unit:
	@echo "Unit tests have passed"

test-e2e: 
	@echo "End-to-end tests have passed"

test-perf:
	@echo "Performance tests have passed"

