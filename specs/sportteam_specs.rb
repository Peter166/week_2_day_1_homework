require('minitest/autorun')
require('minitest/reporters')
require_relative('../sportteam')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSportTeam < MiniTest::Test


  def setup

    @sportteam = SportTeam.new('Bears',['Robert'],'Adam-couch', 0)
  end



  def test_name

    assert_equal('Bears', @sportteam.team_name)
  end
  # #
  def test_team_name
    assert_equal(['Robert'], @sportteam.player)
  end

  def test_couch
    assert_equal('Adam-couch', @sportteam.couch)
  end

  def test_set_couch_kick
    @sportteam.couch = 'NewGuy'
    assert_equal('NewGuy', @sportteam.couch)
  end

  def test_add_player
    assert_equal(2, @sportteam.add_player('Badger'))
  end
  #
  def test_check_player_name
    assert_equal(false, @sportteam.check_player_name('Rodger'))
  end
  def test_won_lost
    @sportteam.won_lost('won')
    assert_equal(1, @sportteam.points)
  end

  #
  #
  #

end
