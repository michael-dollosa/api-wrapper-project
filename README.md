# Sample Application to test Challonge API Wrapper for user

This project is intended for educational purposes.
You may check the gem repo [here](https://github.com/michael-dollosa/challonge-user-rails)

## Configuration

Clone repo into your local machine

```ruby
git clone "git@github.com:michael-dollosa/api-wrapper-project.git"
```

And then execute:

    $ bundle install

Run Rails Server

    $ rails s

## Usage

### Get an API Token from Challonge site
Create an account on [Challonge Website](https://challonge.com) and get an API via Settings - Developer API.

### Configure
It is suggested to create an instance of the client.
In this project repo, client was set inside the application controller. Just set your API key given by the Challonge site.

```ruby
client = ChallongeUserRails::Client.new(api_key: [YOUR API KEY])
```

### Testing

You can run tests using postman (provided rails server is on).

### Routes
As of this moment, these are the available routes to test the API

| METHOD  | DESCRIPTION  | ENDPOINT |
| :------------ |:--------------- | :----- |
| GET | Get All Tournaments | {url prefix}/api/tournaments |
| POST | Create Tournament | {url prefix}/api/tournaments |
| GET | Get Specific Tournament | {url prefix}/api/tournaments/:tournament_url |
| DELETE | Delete Tournament | {url prefix}/api/tournaments/:tournament_url |
| GET | Get Tournament Matches | {url prefix}/api/tournaments/:tournament_url/matches |
| GET | Get Specific Tournament Match | {url prefix}/api/tournaments/:tournament_url/matches/:match_id |
