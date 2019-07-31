# Capybara::ReactDatetime

Helper for triggering date input for react-datetime library

All this gem does is something very simple : allow you to trigger react-datetime to select the date you want.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capybara-react-datetime', git: 'https://github.com/oshopgiri/capybara-react-datetime.git', group: :test
```

Or, add it into your test group

```ruby
group :test do
    gem 'capybara-react-datetime', git: 'https://github.com/oshopgiri/capybara-react-datetime.git'
    ...
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybara-react-datetime

The gem automatically hook itself into rspec helper using Rspec.configure.

## Usage

Just use this method inside your capybara test:

```ruby
select_date(2.weeks.ago, from: "Label of the date input")
```

Or even:

```ruby
select_date(2.weeks.ago, from: "Date", match: :prefer_exact)
select_date(Date.tomorrow, from: "Label of the date input", format: "%d/%m/%Y")
select_date("2013-05-24", xpath: "//path_to//your_date_input", datepicker: :bootstrap)
```

Available options are:
+ **from:** the label of your date input
+ **xpath:** the path to your date input
+ **format:** the format used to fill your date input
+ **datepicker:** the way to fill your date input (:bootstrap = by clicking the popover using [bootstrap-datepicker](https://github.com/eternicode/bootstrap-datepicker))
    ; by default it just fill the input date.

## Test

Just run rspec in your terminal:

    $ rspec

## Upgrading from 0.0.x

RSpec support has been split into a separate file. You'll need to change
`spec_helper.rb` to `require 'capybara-react-datetime/rspec'`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
