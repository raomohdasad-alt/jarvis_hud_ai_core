class AIBrain {
  String process(String input) {
    input = input.toLowerCase();

    if (input.contains("hello")) {
      return "JARVIS online. Systems stable.";
    }

    if (input.contains("btc")) {
      return "Bitcoin is volatile. Monitoring Binance + MEXC markets.";
    }

    if (input.contains("trade")) {
      return "Signal engine active. Awaiting confirmation.";
    }

    if (input.contains("who are you")) {
      return "I am JARVIS, your AI assistant system.";
    }

    return "Command received: $input";
  }
}
