.class public Lcom/papa91/arc/EmuActivity_fba;
.super Lcom/papa91/activity/EmuMenuBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/joystick/a$d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/EmuActivity_fba$ShareResultReceiver;
    }
.end annotation


# static fields
.field public static AD_APP_KEY:Ljava/lang/String; = "1105599035"

.field public static APP_KEY:Ljava/lang/String; = "CvjvU1occ4UCTVEe"

.field public static BUGLY_ID:Ljava/lang/String; = "900009495"

.field private static final IS_USER_V1:Z

.field public static final SINGLE_MODE:Z

.field public static coreName:Ljava/lang/String;

.field public static cpuFreq:Ljava/lang/String;

.field public static cpuNum:Ljava/lang/String;

.field private static emuActivity:Lcom/papa91/arc/EmuActivity_fba;

.field private static recordfn:Ljava/lang/String;

.field private static vibrtor:Landroid/os/Vibrator;


# instance fields
.field audioManager:Landroid/media/AudioManager;

.field private core:Ljava/lang/String;

.field firstKey:I

.field focusRequest:Landroid/media/AudioFocusRequest;

.field private jsonData:Ljava/lang/String;

.field playbackAttributes:Landroid/media/AudioAttributes;

.field private roomSilent:I

.field shareResultReceiver:Lcom/papa91/arc/EmuActivity_fba$ShareResultReceiver;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_fba;->getCurCpuFreq(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/papa91/arc/EmuActivity_fba;->cpuFreq:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/papa91/arc/EmuActivity_fba;->cpuNum:Ljava/lang/String;

    .line 34
    .line 35
    sput-object v1, Lcom/papa91/arc/EmuActivity_fba;->recordfn:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "FBA_V2"

    .line 38
    .line 39
    sput-object v0, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/papa91/arc/EmuActivity_fba;->firstKey:I

    .line 6
    .line 7
    return-void
.end method

.method public static complainPlayer(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->complain(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_0
    array-length v3, v0

    .line 41
    if-ge v2, v3, :cond_5

    .line 42
    .line 43
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    new-instance v3, Ljava/io/File;

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    aget-object v5, v0, v2

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance v4, Ljava/io/File;

    .line 75
    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    aget-object v3, v0, v2

    .line 88
    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move-object v3, v4

    .line 100
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 101
    .line 102
    .line 103
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const-string v5, "/"

    .line 105
    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    .line 109
    .line 110
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 111
    .line 112
    .line 113
    new-instance v6, Ljava/io/FileOutputStream;

    .line 114
    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/16 v7, 0x1400

    .line 145
    .line 146
    new-array v7, v7, [B

    .line 147
    .line 148
    :goto_2
    invoke-virtual {v4, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    const/4 v9, -0x1

    .line 153
    if-eq v8, v9, :cond_2

    .line 154
    .line 155
    invoke-virtual {v6, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_4

    .line 173
    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    aget-object v4, v0, v2

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-static {v3, p1}, Lcom/papa91/arc/EmuActivity_fba;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    .line 196
    .line 197
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :catch_0
    move-exception p0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    :cond_5
    return-void
.end method

.method public static delayStatistics(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->logD(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 5
    .line 6
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, p0, v1}, Lcom/papa91/activity/EmuBaseActivity;->netBattleMatchEfficiency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public static exitActivty(I)V
    .locals 6

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v1, "papa_broadcast_continue_match_fight"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "game_end_state"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sget-wide v2, Lcom/papa91/activity/EmuBaseActivity;->startTIme:J

    .line 26
    .line 27
    sub-long/2addr v0, v2

    .line 28
    long-to-int v1, v0

    .line 29
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 38
    .line 39
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v2, v1, v3}, Lcom/papa91/activity/EmuBaseActivity;->gameOut(Ljava/lang/String;ILjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const-string v3, "_"

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v5, "/mgpapa/aidlservice/Game_out_"

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    sput-wide v4, Lcom/papa91/activity/EmuBaseActivity;->startTIme:J

    .line 93
    .line 94
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 95
    .line 96
    if-nez v1, :cond_2

    .line 97
    .line 98
    if-nez v2, :cond_5

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, "/mgpapa/aidlservice/Game_start15_"

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    const/4 v4, 0x2

    .line 135
    if-eq v1, v4, :cond_4

    .line 136
    .line 137
    const/4 v4, 0x1

    .line 138
    if-ne v1, v4, :cond_3

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    if-nez v2, :cond_5

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v0, "/mgpapa/aidlservice/Game_start160_"

    .line 152
    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 173
    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_4
    :goto_0
    if-nez v2, :cond_5

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v0, "/mgpapa/aidlservice/Game_startBattle15_"

    .line 196
    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    :cond_5
    :goto_1
    sget-object v0, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 226
    .line 227
    const-string v1, "FBA_V2"

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    const-string v1, "/"

    .line 234
    .line 235
    const/4 v2, 0x0

    .line 236
    if-eqz v0, :cond_6

    .line 237
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v3, "/combine_stage_v2"

    .line 257
    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/papa91/arc/util/FileUtils;->deleteDirs(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    :cond_6
    sget-object v0, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 269
    .line 270
    const-string v3, "FBA_V3"

    .line 271
    .line 272
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_7

    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, "/combine_stage_v3"

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/papa91/arc/util/FileUtils;->deleteDirs(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v1, "/combine_stage"

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v0}, Lcom/papa91/arc/util/FileUtils;->deleteDirs(Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    :goto_2
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->exitActivity(I)V

    .line 340
    .line 341
    .line 342
    return-void
.end method

.method public static getCurCpuFreq(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 p0, 0x2

    .line 2
    :try_start_0
    new-array p0, p0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v0, "/system/bin/cat"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object v0, p0, v1

    .line 8
    .line 9
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object v0, p0, v1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/ProcessBuilder;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/16 v0, 0x18

    .line 28
    .line 29
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, -0x1

    .line 38
    if-eq v2, v3, :cond_0

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    const-string v1, "N/A"

    .line 70
    .line 71
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method private getGateZipPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_fba;->getModSubfix()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "/combine_stage"

    .line 10
    .line 11
    const-string v2, "/"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_fba;->getModSubfix()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method

.method public static getRecordInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "FBA_V2"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "_v2"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "FBA_V3"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "_v3"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, ""

    .line 28
    .line 29
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->getRecordInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method private static openUrl()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "http://h5.5fun.com/sp_jiesuo.html"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/papa91/arc/EmuActivity_fba;->emuActivity:Lcom/papa91/arc/EmuActivity_fba;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static playerVibrtor()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_fba;->vibrtor:Landroid/os/Vibrator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v1, 0x32

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private requestAudio()V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/AudioManager;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_fba;->audioManager:Landroid/media/AudioManager;

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    new-instance v1, Lcom/papa91/arc/EmuActivity_fba$2;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/papa91/arc/EmuActivity_fba$2;-><init>(Lcom/papa91/arc/EmuActivity_fba;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v3, 0xe

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Lcom/papa91/arc/EmuActivity_fba;->playbackAttributes:Landroid/media/AudioAttributes;

    .line 39
    .line 40
    const/16 v2, 0x1a

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-lt v0, v2, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lcom/papa91/arc/b;->a()V

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Lr0/h;->a(I)Landroid/media/AudioFocusRequest$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/papa91/arc/EmuActivity_fba;->playbackAttributes:Landroid/media/AudioAttributes;

    .line 53
    .line 54
    invoke-static {v0, v2}, Lr0/d;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v3}, Lr0/b;->a(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v2, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Lcom/papa91/arc/a;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lr0/e;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_fba;->focusRequest:Landroid/media/AudioFocusRequest;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_fba;->audioManager:Landroid/media/AudioManager;

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-static {v1, v0}, Lr0/f;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_fba;->audioManager:Landroid/media/AudioManager;

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    const/4 v2, 0x3

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    return-void
.end method

.method public static saveConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "core"

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static setBlueTooth()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/papa91/arc/EmuActivity_fba;->emuActivity:Lcom/papa91/arc/EmuActivity_fba;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/papa91/activity/EmuBaseActivity;->isSingleGame:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/joystick/a;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public static setImageToMEDIA(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public static startForumsActivity()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleMessage(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static startShare(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "papa_broadcast_share_message"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "shareJson"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public createRom()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "jniLibs"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "/"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "{\"romPath\":\""

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, "/rom/kof97\",\"startMode\":"

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, ",\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\""

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "\",\"assetspath\":\""

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, "\",\"classname\":\"com/papa91/arc/EmuActivity_fba\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":"

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, "}"

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setJson(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/16 v1, 0x19

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget v1, p0, Lcom/papa91/arc/EmuActivity_fba;->firstKey:I

    .line 15
    .line 16
    if-ne v1, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->showDailog(I)I

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    xor-int/2addr p1, v2

    .line 45
    :goto_0
    or-int/2addr p1, v0

    .line 46
    return p1

    .line 47
    :cond_2
    iput v0, p0, Lcom/papa91/arc/EmuActivity_fba;->firstKey:I

    .line 48
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    return p1
.end method

.method getCore(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_fba;->core:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_fba;->core:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "3"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string p1, "FBA_V3"

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->netState:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    const-string v2, "_v2"

    .line 27
    .line 28
    const-string v3, "FBA_V2"

    .line 29
    .line 30
    const-string v4, "FBA"

    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_1
    return-object v4

    .line 42
    :cond_2
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 43
    .line 44
    const/16 v1, 0xf

    .line 45
    .line 46
    if-ne v0, v1, :cond_4

    .line 47
    .line 48
    sget-object p1, Lcom/papa91/arc/EmuActivity_fba;->recordfn:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v0, -0x1

    .line 55
    if-ne p1, v0, :cond_3

    .line 56
    .line 57
    return-object v4

    .line 58
    :cond_3
    return-object v3

    .line 59
    :cond_4
    if-nez v0, :cond_7

    .line 60
    .line 61
    iget v1, p0, Lcom/papa91/arc/EmuActivity_fba;->roomSilent:I

    .line 62
    .line 63
    if-nez v1, :cond_7

    .line 64
    .line 65
    const-string v0, "/"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->romName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/papa91/arcapp/AppConfig_fba;->isPgmGame(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    sget-object v1, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->romName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->romName:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_0
    const/16 v1, 0x64

    .line 118
    .line 119
    if-gt v0, v1, :cond_6

    .line 120
    .line 121
    new-instance v1, Ljava/io/File;

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v5, "."

    .line 132
    .line 133
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    return-object v4

    .line 153
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_6
    return-object v3

    .line 157
    :cond_7
    const/16 p1, 0xe

    .line 158
    .line 159
    if-ne p1, v0, :cond_8

    .line 160
    .line 161
    return-object v3

    .line 162
    :cond_8
    return-object v4
.end method

.method public getGateData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/GateBean;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_fba;->isShowGate()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    new-instance v2, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/papa91/arc/EmuActivity_fba;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    array-length v3, v3

    .line 34
    if-gtz v3, :cond_1

    .line 35
    .line 36
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 37
    .line 38
    const-string v4, ".zip"

    .line 39
    .line 40
    invoke-direct {p0, v4}, Lcom/papa91/arc/EmuActivity_fba;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/papa91/arc/EmuActivity_fba;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Lcom/papa91/arc/util/XZip;->upZipFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    new-instance v3, Lcom/papa91/arc/EmuActivity_fba$3;

    .line 55
    .line 56
    invoke-direct {v3, p0}, Lcom/papa91/arc/EmuActivity_fba$3;-><init>(Lcom/papa91/arc/EmuActivity_fba;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    array-length v3, v2

    .line 64
    const/4 v4, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    :goto_0
    if-ge v5, v3, :cond_2

    .line 67
    .line 68
    aget-object v6, v2, v5

    .line 69
    .line 70
    new-instance v7, Lcom/papa91/arc/bean/GateBean;

    .line 71
    .line 72
    invoke-direct {v7}, Lcom/papa91/arc/bean/GateBean;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/papa91/arc/EmuActivity_fba;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v9, "/"

    .line 88
    .line 89
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v7, v8}, Lcom/papa91/arc/bean/GateBean;->setGateMaskPath(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    add-int/lit8 v8, v8, -0x4

    .line 107
    .line 108
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v7, v6}, Lcom/papa91/arc/bean/GateBean;->setGateName(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/papa91/arc/bean/GateBean;->getGateName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v7}, Lcom/papa91/arc/bean/GateBean;->getGateName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    const-string v9, "."

    .line 124
    .line 125
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    add-int/lit8 v8, v8, 0x1

    .line 130
    .line 131
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-virtual {v7, v6}, Lcom/papa91/arc/bean/GateBean;->setGateIndex(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    add-int/lit8 v5, v5, 0x1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    .line 151
    .line 152
    :cond_2
    new-instance v0, Lcom/papa91/arc/EmuActivity_fba$4;

    .line 153
    .line 154
    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_fba$4;-><init>(Lcom/papa91/arc/EmuActivity_fba;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 158
    .line 159
    .line 160
    return-object v1
.end method

.method public getMenuTypes(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/TypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "\u609f\u996d\u5b9a\u5236"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    sget v6, Lorg/ppsspp/ppsspp/R$drawable;->ic_cheat_vip:I

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    move v5, v6

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x1

    .line 26
    if-ne p1, v1, :cond_1

    .line 27
    .line 28
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const-string v4, "\u6211\u7684\u5b58\u6863"

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, -0x1

    .line 35
    const/4 v7, -0x1

    .line 36
    move-object v2, p1

    .line 37
    invoke-direct/range {v2 .. v7}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    const-string v10, "\u81ea\u52a8\u5b58\u6863"

    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, -0x1

    .line 50
    const/4 v13, -0x1

    .line 51
    move-object v8, p1

    .line 52
    invoke-direct/range {v8 .. v13}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    const-string v3, "\u5b58\u6863\u5546\u5e97"

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->ic_slot_store_h:I

    .line 65
    .line 66
    sget v6, Lorg/ppsspp/ppsspp/R$drawable;->ic_slot_store_n:I

    .line 67
    .line 68
    move-object v1, p1

    .line 69
    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getModSubfix()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "FBA_V2"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "_v2"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "FBA_V3"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v0, "_v3"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, ""

    .line 28
    .line 29
    :goto_0
    return-object v0
.end method

.method public getSimulatorType()Ljava/lang/String;
    .locals 1

    const-string v0, "fba"

    return-object v0
.end method

.method protected handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuMenuBaseActivity;->handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/papa91/activity/EmuBaseActivity;->isSingleGame:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p1, "adAction"

    .line 10
    .line 11
    const/16 v0, 0x3eb

    .line 12
    .line 13
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->pauseGame()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 p2, 0x3ec

    .line 24
    .line 25
    if-ne p1, p2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->resumeGame()V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public hideMenuDialog()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->hideMenuDialog()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnResume()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public isShowGate()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isEndGame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    const-string v2, ".zip"

    .line 19
    .line 20
    invoke-direct {p0, v2}, Lcom/papa91/arc/EmuActivity_fba;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return v0

    .line 32
    :catch_0
    return v1
.end method

.method public loadAdVideo()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "FBA"

    .line 12
    .line 13
    invoke-interface {v0, p0, v1}, Lcom/papa91/arc/CContext$IVideoAdListener;->loadAd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public loadGateStage(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->loadStageData(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public loadRom()V
    .locals 7

    .line 1
    const-string v0, "screenMode"

    .line 2
    .line 3
    const-string v1, "appPath"

    .line 4
    .line 5
    const-string v2, "libPath"

    .line 6
    .line 7
    const-string v3, "enableAudio"

    .line 8
    .line 9
    const-string v4, "vibriorMode"

    .line 10
    .line 11
    const-string v5, "gameMode"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v2, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fba;->getLibpath(Landroid/content/Context;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    .line 26
    .line 27
    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    .line 28
    .line 29
    const-string v6, "FBA"

    .line 30
    .line 31
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->initLaunchConfig([Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_fba;->createRom()V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "/rom/kof97"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/io/File;

    .line 63
    .line 64
    sget-object v1, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, "/emus/"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    sget-object v2, Lcom/papa91/common/BaseAppConfig;->EMU_NAME:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, "/"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->initEmu()I

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method protected loginFinish()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->onLoginFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/papa91/arc/util/StoreUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "/1/assets/"

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    .line 31
    .line 32
    sput-object v1, Lcom/papa91/arc/EmuActivity_fba;->emuActivity:Lcom/papa91/arc/EmuActivity_fba;

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v3, Lcom/papa91/arc/EmuActivity_fba;->BUGLY_ID:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {v0, v3, v4}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "vibrator"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/os/Vibrator;

    .line 51
    .line 52
    sput-object v0, Lcom/papa91/arc/EmuActivity_fba;->vibrtor:Landroid/os/Vibrator;

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v3, "romPath"

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_0

    .line 71
    .line 72
    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v6, "json ........................... rompath : "

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v5}, Lcom/papa91/arcapp/AppConfig_fba;->logD(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/papa91/arcapp/AppConfig_fba;->initialise(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/arc/EmuActivity_fba;->updateConfig()V

    .line 100
    .line 101
    .line 102
    const-string v5, "jsonData"

    .line 103
    .line 104
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v6, :cond_1

    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_2

    .line 119
    .line 120
    :cond_1
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    sput-object v6, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 125
    .line 126
    :cond_2
    if-eqz v0, :cond_3

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_4

    .line 133
    .line 134
    :cond_3
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :cond_4
    const-string v5, "/"

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    iput-object v0, v1, Lcom/papa91/arc/EmuActivity_fba;->jsonData:Ljava/lang/String;

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    :try_start_0
    new-instance v7, Lcom/papa91/arc/MyJson;

    .line 146
    .line 147
    invoke-direct {v7, v0}, Lcom/papa91/arc/MyJson;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    move-object v7, v6

    .line 156
    :goto_0
    const-string v8, "startMode"

    .line 157
    .line 158
    const-string v9, ""

    .line 159
    .line 160
    if-eqz v7, :cond_7

    .line 161
    .line 162
    const-string v0, "pa_package_name"

    .line 163
    .line 164
    sget-object v10, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v7, v0, v10}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v7, v8, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    sput v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 177
    .line 178
    invoke-virtual {v7, v3, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 183
    .line 184
    sput-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 185
    .line 186
    new-instance v0, Ljava/io/File;

    .line 187
    .line 188
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 189
    .line 190
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v10, "/emus/"

    .line 214
    .line 215
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    sget-object v10, Lcom/papa91/common/BaseAppConfig;->EMU_NAME:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sput-object v0, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    .line 240
    .line 241
    const-string v0, "sopath"

    .line 242
    .line 243
    invoke-virtual {v7, v0, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    .line 248
    .line 249
    const-string v0, "assetspath"

    .line 250
    .line 251
    invoke-virtual {v7, v0, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    .line 256
    .line 257
    const-string v0, "activityName"

    .line 258
    .line 259
    invoke-virtual {v7, v0, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    .line 264
    .line 265
    const-string v3, "."

    .line 266
    .line 267
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    .line 272
    .line 273
    const-string v0, "userID"

    .line 274
    .line 275
    invoke-virtual {v7, v0, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 280
    .line 281
    const-string v0, "gameID"

    .line 282
    .line 283
    invoke-virtual {v7, v0, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 288
    .line 289
    const-string v0, "verCode"

    .line 290
    .line 291
    invoke-virtual {v7, v0, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->verCode:Ljava/lang/String;

    .line 296
    .line 297
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 298
    .line 299
    const-string v3, "tourist"

    .line 300
    .line 301
    invoke-virtual {v7, v3, v0}, Lcom/papa91/arc/MyJson;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    sput-boolean v3, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    .line 310
    .line 311
    const-string v3, "plugin_area_val"

    .line 312
    .line 313
    invoke-virtual {v7, v3, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    sput v3, Lcom/papa91/activity/EmuBaseActivity;->fid:I

    .line 318
    .line 319
    const-string v3, "roomID"

    .line 320
    .line 321
    invoke-virtual {v7, v3, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->RoomID:Ljava/lang/String;

    .line 326
    .line 327
    const-string v3, "groupId"

    .line 328
    .line 329
    invoke-virtual {v7, v3, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->GroupID:Ljava/lang/String;

    .line 334
    .line 335
    const-string v3, "version"

    .line 336
    .line 337
    invoke-virtual {v7, v3, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->Version:Ljava/lang/String;

    .line 342
    .line 343
    const-string v3, "serverIP"

    .line 344
    .line 345
    invoke-virtual {v7, v3, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->server_ip:Ljava/lang/String;

    .line 350
    .line 351
    const-string v3, "serverPort"

    .line 352
    .line 353
    invoke-virtual {v7, v3, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->server_port:Ljava/lang/String;

    .line 358
    .line 359
    const-string v3, "porder"

    .line 360
    .line 361
    invoke-virtual {v7, v3, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    sput v3, Lcom/papa91/common/BaseAppConfig;->curPlayer:I

    .line 366
    .line 367
    const-string v3, "token"

    .line 368
    .line 369
    const-string v5, "0"

    .line 370
    .line 371
    invoke-virtual {v7, v3, v5}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    sput-object v3, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 376
    .line 377
    const-string v3, "core"

    .line 378
    .line 379
    invoke-virtual {v7, v3, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    iput-object v3, v1, Lcom/papa91/arc/EmuActivity_fba;->core:Ljava/lang/String;

    .line 384
    .line 385
    const-string v3, "sp_lock"

    .line 386
    .line 387
    invoke-virtual {v7, v3, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    sput v3, Lcom/papa91/activity/EmuBaseActivity;->spLock:I

    .line 392
    .line 393
    const-string v3, "sVipLevel"

    .line 394
    .line 395
    invoke-virtual {v7, v3, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    iput v3, v1, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    .line 400
    .line 401
    const-string v3, "vipLevel"

    .line 402
    .line 403
    invoke-virtual {v7, v3, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    iput v3, v1, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    .line 408
    .line 409
    invoke-virtual {v7, v9, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    iput v3, v1, Lcom/papa91/arc/EmuActivity_fba;->roomSilent:I

    .line 414
    .line 415
    const-string v3, "netState"

    .line 416
    .line 417
    invoke-virtual {v7, v3, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->netState:Ljava/lang/String;

    .line 422
    .line 423
    const-string v5, "endGameId"

    .line 424
    .line 425
    const/4 v10, -0x1

    .line 426
    invoke-virtual {v7, v5, v10}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 427
    .line 428
    .line 429
    move-result v5

    .line 430
    sput v5, Lcom/papa91/activity/EmuBaseActivity;->endGameId:I

    .line 431
    .line 432
    const-string v5, "endGameTime"

    .line 433
    .line 434
    invoke-virtual {v7, v5, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 435
    .line 436
    .line 437
    move-result v5

    .line 438
    sput v5, Lcom/papa91/activity/EmuBaseActivity;->endGameTime:I

    .line 439
    .line 440
    const-string v5, "endId"

    .line 441
    .line 442
    invoke-virtual {v7, v5, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->endId:Ljava/lang/String;

    .line 447
    .line 448
    const-string v5, "subTitle"

    .line 449
    .line 450
    invoke-virtual {v7, v5, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->subTitle:Ljava/lang/String;

    .line 455
    .line 456
    const-string v5, "endGameLevelRules"

    .line 457
    .line 458
    invoke-virtual {v7, v5, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->endGameLevelRules:Ljava/lang/String;

    .line 463
    .line 464
    const-string v5, "allowPeripheralJoin"

    .line 465
    .line 466
    invoke-virtual {v7, v5, v0}, Lcom/papa91/arc/MyJson;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    iput-boolean v0, v1, Lcom/papa91/activity/EmuBaseActivity;->allowPeripheralJoin:Z

    .line 475
    .line 476
    const-string v0, "rankMiniTime"

    .line 477
    .line 478
    invoke-virtual {v7, v0, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    iput v0, v1, Lcom/papa91/activity/EmuBaseActivity;->miniRankTime:I

    .line 483
    .line 484
    const-string v0, "rankAutoUpload"

    .line 485
    .line 486
    invoke-virtual {v7, v0, v4}, Lcom/papa91/arc/MyJson;->getInt(Ljava/lang/String;I)I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    iput v0, v1, Lcom/papa91/activity/EmuBaseActivity;->rankAutoUpload:I

    .line 491
    .line 492
    const-string v0, "isSingleGame"

    .line 493
    .line 494
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 495
    .line 496
    invoke-virtual {v7, v0, v4}, Lcom/papa91/arc/MyJson;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    iput-boolean v0, v1, Lcom/papa91/activity/EmuBaseActivity;->isSingleGame:Z

    .line 505
    .line 506
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankAutoUpload()Z

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    if-nez v0, :cond_5

    .line 511
    .line 512
    const-string v0, "rolesJson"

    .line 513
    .line 514
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-nez v4, :cond_5

    .line 523
    .line 524
    new-instance v4, Lcom/google/gson/Gson;

    .line 525
    .line 526
    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 527
    .line 528
    .line 529
    new-instance v5, Lcom/papa91/arc/EmuActivity_fba$1;

    .line 530
    .line 531
    invoke-direct {v5, v1}, Lcom/papa91/arc/EmuActivity_fba$1;-><init>(Lcom/papa91/arc/EmuActivity_fba;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    check-cast v0, Ljava/util/List;

    .line 543
    .line 544
    iput-object v0, v1, Lcom/papa91/activity/EmuMenuBaseActivity;->rolesBeanList:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    .line 546
    goto :goto_1

    .line 547
    :catch_1
    move-exception v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 549
    .line 550
    .line 551
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->setMenuViewListener()V

    .line 552
    .line 553
    .line 554
    const-string v0, "adDatas"

    .line 555
    .line 556
    invoke-virtual {v7, v0, v6}, Lcom/papa91/arc/MyJson;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    if-eqz v0, :cond_6

    .line 561
    .line 562
    sget-object v4, Lcom/papa91/arc/EmuActivity_fba;->AD_APP_KEY:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v1, v0, v4}, Lcom/papa91/activity/EmuBaseActivity;->initBanner(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    :cond_6
    :try_start_2
    const-string v0, "device"

    .line 568
    .line 569
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getPhoneInfo()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 574
    .line 575
    .line 576
    goto :goto_2

    .line 577
    :catch_2
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 579
    .line 580
    .line 581
    :goto_2
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 582
    .line 583
    const/16 v4, 0xf

    .line 584
    .line 585
    if-ne v0, v4, :cond_7

    .line 586
    .line 587
    invoke-virtual {v7, v3, v9}, Lcom/papa91/arc/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    sput-object v0, Lcom/papa91/arc/EmuActivity_fba;->recordfn:Ljava/lang/String;

    .line 592
    .line 593
    :cond_7
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 594
    .line 595
    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .line 602
    .line 603
    const-string v3, "...................KEY_START_FID : "

    .line 604
    .line 605
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    sget v3, Lcom/papa91/activity/EmuBaseActivity;->fid:I

    .line 609
    .line 610
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-static {v0}, Lcom/papa91/arcapp/AppConfig_fba;->logE(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/activity/EmuBaseActivity;->asyncConfig()V

    .line 625
    .line 626
    .line 627
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onLoadNativeLibraries()V

    .line 628
    .line 629
    .line 630
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v1, v0}, Lcom/papa91/arc/EmuActivity_fba;->getCore(Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    sput-object v0, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 637
    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    .line 639
    .line 640
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    .line 642
    .line 643
    const-string v3, "getCore "

    .line 644
    .line 645
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    sget-object v3, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 649
    .line 650
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-static {v0}, Lcom/papa91/arcapp/AppConfig_fba;->logE(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    const-string v10, "screenMode"

    .line 661
    .line 662
    const-string v11, "appPath"

    .line 663
    .line 664
    const-string v12, "libPath"

    .line 665
    .line 666
    const-string v13, "enableAudio"

    .line 667
    .line 668
    const-string v14, "vibriorMode"

    .line 669
    .line 670
    const-string v15, "version"

    .line 671
    .line 672
    const-string v16, "cpuNum"

    .line 673
    .line 674
    const-string v17, "cpuFreq"

    .line 675
    .line 676
    const-string v18, "sp_lock"

    .line 677
    .line 678
    const-string v19, "gameMode"

    .line 679
    .line 680
    filled-new-array/range {v10 .. v19}, [Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    sget-object v10, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    .line 685
    .line 686
    sget-object v11, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 687
    .line 688
    invoke-static/range {p0 .. p0}, Lcom/papa91/arcapp/AppConfig_fba;->getLibpath(Landroid/content/Context;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v12

    .line 692
    sget-object v13, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    .line 693
    .line 694
    sget-object v14, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    .line 695
    .line 696
    sget-object v15, Lcom/papa91/activity/EmuBaseActivity;->version:Ljava/lang/String;

    .line 697
    .line 698
    sget-object v16, Lcom/papa91/arc/EmuActivity_fba;->cpuNum:Ljava/lang/String;

    .line 699
    .line 700
    sget-object v17, Lcom/papa91/arc/EmuActivity_fba;->cpuFreq:Ljava/lang/String;

    .line 701
    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    .line 706
    .line 707
    sget v4, Lcom/papa91/activity/EmuBaseActivity;->spLock:I

    .line 708
    .line 709
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v18

    .line 719
    sget-object v19, Lcom/papa91/arc/EmuActivity_fba;->coreName:Ljava/lang/String;

    .line 720
    .line 721
    filled-new-array/range {v10 .. v19}, [Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    invoke-static {v0, v3}, Lcom/papa91/activity/EmuBaseActivity;->initLaunchConfig([Ljava/lang/String;[Ljava/lang/String;)I

    .line 726
    .line 727
    .line 728
    :try_start_3
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 729
    .line 730
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 731
    .line 732
    .line 733
    const-string v0, "apkPath"

    .line 734
    .line 735
    sget-object v3, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    .line 736
    .line 737
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    .line 739
    .line 740
    const-string v0, "classname"

    .line 741
    .line 742
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    .line 743
    .line 744
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 745
    .line 746
    .line 747
    goto :goto_3

    .line 748
    :catch_3
    move-exception v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 750
    .line 751
    .line 752
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    .line 757
    .line 758
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .line 760
    .line 761
    const-string v4, "onCreateTEST: "

    .line 762
    .line 763
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    .line 770
    .line 771
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    sget-object v4, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 778
    .line 779
    invoke-virtual {v1, v0, v4}, Lcom/papa91/activity/EmuBaseActivity;->dealSDPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v4

    .line 783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    sget-object v3, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 787
    .line 788
    invoke-virtual {v1, v0, v3}, Lcom/papa91/activity/EmuBaseActivity;->dealSDPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setJson(Ljava/lang/String;)I

    .line 793
    .line 794
    .line 795
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->initEmu()I

    .line 796
    .line 797
    .line 798
    goto :goto_4

    .line 799
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string v3, "jniLibs"

    .line 805
    .line 806
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    .line 825
    .line 826
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onLoadNativeLibraries()V

    .line 827
    .line 828
    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/arc/EmuActivity_fba;->loadRom()V

    .line 830
    .line 831
    .line 832
    :goto_4
    invoke-super/range {p0 .. p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 833
    .line 834
    .line 835
    iget-boolean v0, v1, Lcom/papa91/activity/EmuBaseActivity;->allowPeripheralJoin:Z

    .line 836
    .line 837
    if-eqz v0, :cond_9

    .line 838
    .line 839
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    sget-object v3, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FBA:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    .line 844
    .line 845
    invoke-virtual {v0, v1, v3}, Lcom/join/mgps/joystick/a;->w(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 846
    .line 847
    .line 848
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    invoke-virtual {v0, v1}, Lcom/join/mgps/joystick/a;->y(Lcom/join/mgps/joystick/a$d;)V

    .line 853
    .line 854
    .line 855
    :cond_9
    new-instance v0, Lcom/papa91/arc/EmuActivity_fba$ShareResultReceiver;

    .line 856
    .line 857
    invoke-direct {v0, v1}, Lcom/papa91/arc/EmuActivity_fba$ShareResultReceiver;-><init>(Lcom/papa91/arc/EmuActivity_fba;)V

    .line 858
    .line 859
    .line 860
    iput-object v0, v1, Lcom/papa91/arc/EmuActivity_fba;->shareResultReceiver:Lcom/papa91/arc/EmuActivity_fba$ShareResultReceiver;

    .line 861
    .line 862
    new-instance v0, Landroid/content/IntentFilter;

    .line 863
    .line 864
    const-string v3, "com.emu.share.result"

    .line 865
    .line 866
    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    iget-object v3, v1, Lcom/papa91/arc/EmuActivity_fba;->shareResultReceiver:Lcom/papa91/arc/EmuActivity_fba$ShareResultReceiver;

    .line 870
    .line 871
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 872
    .line 873
    .line 874
    invoke-virtual/range {p0 .. p1}, Lcom/papa91/activity/EmuBaseActivity;->onAfterActivityCreated(Landroid/os/Bundle;)V

    .line 875
    .line 876
    .line 877
    sget-object v0, Lcom/papa91/arc/CContext;->mLifeListener:Lcom/papa91/arc/CContext$IActivityLifeCycleListener;

    .line 878
    .line 879
    if-eqz v0, :cond_a

    .line 880
    .line 881
    invoke-interface {v0}, Lcom/papa91/arc/CContext$IActivityLifeCycleListener;->onCreated()V

    .line 882
    .line 883
    .line 884
    :cond_a
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/joystick/a;->F()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->exitEmu()I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_fba;->shareResultReceiver:Lcom/papa91/arc/EmuActivity_fba$ShareResultReceiver;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onGenericMotionEvent(IFF)V
    .locals 0

    return-void
.end method

.method protected onHandleEmuExit()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onHandleEmuExit()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameDestroy(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lcom/papa91/arcapp/AppConfig_fba;->IsXperiaPlay()Z

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onKeyMap([ILcom/join/mgps/joystick/map/c;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/papa91/activity/EmuBaseActivity;->allowPeripheralJoin:Z

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setJoyStickKey([I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gamePause(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameResume(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "jsonData"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_fba;->jsonData:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "romPath"

    .line 9
    .line 10
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onVirtualKeyboard(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/activity/EmuBaseActivity;->allowPeripheralJoin:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->setPadVisible(II)I

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    invoke-static {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->setPadVisible(II)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public readBytes([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    sub-int/2addr v1, v0

    .line 7
    invoke-virtual {p2, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    return-object p1
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_fba;->startKeyDemo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected setUserStateUi(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setUserState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showAdVideo()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "FBA"

    .line 14
    .line 15
    invoke-interface {v0, p0, v1, v2}, Lcom/papa91/arc/CContext$IVideoAdListener;->showAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected showInvitePlayUi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/papa91/activity/EmuBaseActivity;->showInvitePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->sendReceiveInvitation()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_fba;->hideMenuDialog()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected startKeyDemo()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    .line 3
    .line 4
    const-string v2, "192.168.71.163"

    .line 5
    .line 6
    const/16 v3, 0x3039

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_fba;->socket:Ljava/net/Socket;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v2, v1, [B

    .line 15
    .line 16
    new-instance v3, Ljava/io/BufferedReader;

    .line 17
    .line 18
    new-instance v4, Ljava/io/InputStreamReader;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/papa91/arc/EmuActivity_fba;->socket:Ljava/net/Socket;

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/papa91/arc/EmuActivity_fba;->socket:Ljava/net/Socket;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0, v2, v3}, Lcom/papa91/arc/EmuActivity_fba;->readBytes([BLjava/io/InputStream;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x3

    .line 43
    aget-byte v3, v2, v3

    .line 44
    .line 45
    shl-int/lit8 v3, v3, 0x8

    .line 46
    .line 47
    const/high16 v4, -0x1000000

    .line 48
    .line 49
    and-int/2addr v3, v4

    .line 50
    const/4 v4, 0x2

    .line 51
    aget-byte v4, v2, v4

    .line 52
    .line 53
    shl-int/lit8 v4, v4, 0x8

    .line 54
    .line 55
    const/high16 v5, 0xff0000

    .line 56
    .line 57
    and-int/2addr v4, v5

    .line 58
    or-int/2addr v3, v4

    .line 59
    aget-byte v4, v2, v0

    .line 60
    .line 61
    shl-int/lit8 v4, v4, 0x8

    .line 62
    .line 63
    const v5, 0xff00

    .line 64
    .line 65
    .line 66
    and-int/2addr v4, v5

    .line 67
    or-int/2addr v3, v4

    .line 68
    const/4 v4, 0x0

    .line 69
    aget-byte v5, v2, v4

    .line 70
    .line 71
    and-int/lit16 v5, v5, 0xff

    .line 72
    .line 73
    or-int/2addr v3, v5

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v6, "res == "

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    if-ltz v3, :cond_0

    .line 88
    .line 89
    new-array v5, v1, [I

    .line 90
    .line 91
    aput v3, v5, v4

    .line 92
    .line 93
    invoke-static {v5}, Lcom/papa91/activity/EmuBaseActivity;->setJoyStickKey([I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    const-string v2, "\u8fde\u63a5\u5931\u8d25"

    .line 99
    .line 100
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public updateConfig()V
    .locals 3

    .line 1
    const-string v0, "core"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "enableAudio"

    .line 9
    .line 10
    const-string v2, "1"

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "screenMode"

    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "vibriorMode"

    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "version"

    .line 35
    .line 36
    const-string v2, "1.4.0"

    .line 37
    .line 38
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->version:Ljava/lang/String;

    .line 43
    .line 44
    return-void
.end method
