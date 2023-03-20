#!/bin/bash

bazel cquery --noinclude_aspects --build_tag_filters="" --test_tag_filters="-requires_bpf" 'rdeps(//src/..., set(//src:parse.cc))'
bazel info execution_root
bazel cquery --noinclude_aspects --build_tag_filters="requires_bpf" --test_tag_filters="requires_bpf" 'rdeps(//src/..., set(//src:parse.cc))'
