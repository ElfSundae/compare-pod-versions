#!/usr/bin/env ruby

require 'cocoapods-core'

versions = [
    '1.2.0',
    '1.2.0.1',
    '1.2.0.100',
    '1.2.0-1',
    '1.2.0-100',
    '1.2.0-RC',
    '1.2.0-alpha',
    '1.2.0-beta',
    '1.2.0-beta.1',
    '1.2.1'
]

versions = versions.sort_by { rand }
puts "versions: #{versions.join('  ')}"

pod_versions = versions.map { |v| Pod::Version.new(v) }
sorted_versions = pod_versions.sort.map { |pod_v| pod_v.version }

puts "sorted versions: #{sorted_versions.join(' < ')}"
