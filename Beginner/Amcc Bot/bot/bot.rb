require 'dotenv/load'
require 'telegram/bot'
 
token = ENV['BOT_TOKEN']
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start@kumiss_bot'
      bot.api.send_message(chat_id: message.chat.id, text: "
      Halooo selamat datang di AMCC jangan lupa pantengin web kita amcc.or.id yah, ada banyak info menarik seputar amcc di sana
      ========================
Informasi command yang tersedia kunjungi /help
jika informasi kurang jelas bisa menghubungi Mimin Ayeee... ^_^
     ")
    when '/pelatihan@kumiss_bot'
      bot.api.send_message(chat_id: message.chat.id, text: "sabar yak, pelatihan di infokan setelah firstmeet")
    when '/firstmeetkumiss_bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Cek IG @amccamikom yah, semua info ada disana...
      ")
     when '/status@kumiss_bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Cieeeee yang kepo status ... 
      ")
     when '/info@kumiss_bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Bot masih dalam pengembangan, lamanya respon dikarenakan server yang masih lokal... 
      ")
      when '/lagiapa@kumiss_bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Lagi ngantuk nih, pengen bobo.. 
      ")
      when 'malming nih'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        iya nih malam minggu, emang kenapa? 
      ")
    when 'bot gak kemana gitu?'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        kagak deh, bot di rumah aja, kan bot anak rumahan 
      ")
      when 'jangan nakal'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        ampun deh om, bot anak baik2 kok, kalau kagak percaya tanyain aja pak koor @devryk 
      ")
      when 'iya bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        nah kan ...  
      ")
      when 'bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Iya ada apa? 
      ")
      when 'bangun'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Iya ini udah bangung 
      ")
      
      when '/help@kumiss_bot'
      bot.api.send_message(chat_id: message.chat.id, text: 
      "
        Daftar Perintah Chatbot
        ========================
    /start - untuk memulai bot
    /pelatihan - untuk melihat jadwal pelatihan
    /firstmeet - untuk melihat info terkini firstmeet
    /lokasifirstmeet - untuk melihat lokasi firstmeet
    /info - untuk informasi pengembangan chatbot  
      ")
    when '/lokasifirstmeet@kumiss_bot'
      bot.api.send_location(chat_id: message.chat.id, latitude: -7.759356, longitude: 110.408348)
    end
  end
end