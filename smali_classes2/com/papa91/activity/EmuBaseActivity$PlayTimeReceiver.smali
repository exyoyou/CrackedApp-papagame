.class public Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayTimeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method public constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sVipLevel"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p1, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "vipLevel"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p1, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "uid"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v3, "token"

    .line 46
    .line 47
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 52
    .line 53
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 69
    .line 70
    iget v0, v0, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 80
    .line 81
    iget v0, v0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v0, "tourist"

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    sput-boolean p2, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 102
    .line 103
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/papa91/activity/EmuBaseActivity;->loginFinish()V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 109
    .line 110
    invoke-static {p2, v1}, Lcom/papa91/activity/EmuBaseActivity;->access$002(Lcom/papa91/activity/EmuBaseActivity;Z)Z

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 114
    .line 115
    const/16 v0, 0xb

    .line 116
    .line 117
    invoke-static {p2, v0}, Lcom/papa91/activity/EmuBaseActivity;->access$102(Lcom/papa91/activity/EmuBaseActivity;I)I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->requestOnsign(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->updateAutoSlotData()V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$PlayTimeReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->onVipChanged()V

    .line 135
    .line 136
    .line 137
    return-void
.end method
