App.chat = App.cable.subscriptions.create("ChatChannel", {
    connected() {
        console.log('subscribed');
    },

    disconnected() {},

    received(data) {
        console.log(data);
        $("[data-is='chat']").val(data.message + "\n");
    },

    speak(message) {
        console.log(message);
        return this.perform('speak', { message });
    }
});