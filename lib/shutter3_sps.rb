#!/usr/bin/env ruby

# file: shutter3_sps.rb

require 'sps-pub'
require 'shutter3'


class Shutter3Sps < Shutter3

  def initialize(bdid, topic: 'shutter3', sps_address: nil, sps_port: 59000)

    raise 'Shutter3Sps: Please provide an SPS address' unless sps_address
    super(bdid)
    @sps = SPSPub.new host: sps_address
    @topic = topic
  end

  def on_android_keypress()
    @sps.notice @topic + ': button2 pressed'
  end

  def on_android_keydown()

  end

  def on_android_keyup()

  end

  def on_connect()
    @sps.notice @topic + ': connected'
  end

  def on_disconnect()

    @sps.notice @topic + ': disconnected'
  end

  def on_ios_keypress()
    @sps.notice @topic + ': button1 pressed'
  end

  def on_ios_keydown()

  end

  def on_ios_keyup()

  end

end

if __FILE__ == $0 then

  br = Shutter3Sps.new bdid=ARGV[0], sps_address: ARGV[1]
  br.start

end

