.class Lcom/papa91/activity/EmuBaseActivity$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

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
    .locals 3

    .line 1
    const-string p1, "/so"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "token"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "vipLevel"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "sVipLevel"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, v0, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const-string v0, "uid"

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    sput-object p2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 54
    .line 55
    iget-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 56
    .line 57
    iget v0, p2, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 58
    .line 59
    iget p2, p2, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    .line 60
    .line 61
    invoke-static {v0, p2}, Lcom/papa91/activity/EmuBaseActivity;->setVipType(II)V

    .line 62
    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    :try_start_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    const-string v1, ""

    .line 68
    .line 69
    if-eq v0, v1, :cond_0

    .line 70
    .line 71
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    .line 77
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 v0, 0x0

    .line 92
    aget-object p1, p1, v0

    .line 93
    .line 94
    const-string v1, "/"

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v1, p2

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v1, "_"

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    aget-object p1, p1, v0

    .line 112
    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const/16 v0, 0x1ae

    .line 122
    .line 123
    if-lt p1, v0, :cond_0

    .line 124
    .line 125
    sget-object p1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 126
    .line 127
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    nop

    .line 134
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 135
    .line 136
    iget v0, p1, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 137
    .line 138
    if-lez v0, :cond_1

    .line 139
    .line 140
    iget-object p1, p1, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    .line 141
    .line 142
    if-eqz p1, :cond_1

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_1

    .line 149
    .line 150
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 158
    .line 159
    const/4 v0, 0x0

    .line 160
    iput-object v0, p1, Lcom/papa91/activity/EmuBaseActivity;->messageDialog:Lcom/papa91/MessageVipCommonDialog;

    .line 161
    .line 162
    invoke-static {p2}, Lcom/papa91/activity/EmuBaseActivity;->setAdResult(I)V

    .line 163
    .line 164
    .line 165
    :cond_1
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$MyReceiver;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/papa91/activity/EmuBaseActivity;->onVipChanged()V

    .line 168
    .line 169
    .line 170
    return-void
.end method
