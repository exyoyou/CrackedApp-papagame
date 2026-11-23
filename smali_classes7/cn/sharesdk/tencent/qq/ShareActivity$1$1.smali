.class Lcn/sharesdk/tencent/qq/ShareActivity$1$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/ShareActivity$1;->onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/sharesdk/tencent/qq/ShareActivity$1;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/ShareActivity$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1$1;->b:Lcn/sharesdk/tencent/qq/ShareActivity$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "ShareSDK"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    :try_start_0
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1$1;->b:Lcn/sharesdk/tencent/qq/ShareActivity$1;

    .line 8
    .line 9
    iget-object v0, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$500(Lcn/sharesdk/tencent/qq/ShareActivity;)Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v5, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1$1;->b:Lcn/sharesdk/tencent/qq/ShareActivity$1;

    .line 16
    .line 17
    iget-object v5, v5, Lcn/sharesdk/tencent/qq/ShareActivity$1;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v5}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    new-array v6, v4, [Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v8, " QQ ShareActivity path: "

    .line 35
    .line 36
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    aput-object v7, v6, v3

    .line 47
    .line 48
    invoke-virtual {v5, v2, v6}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    new-array v6, v4, [Ljava/lang/Object;

    .line 58
    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v8, " QQ ShareActivity path catch "

    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    aput-object v7, v6, v3

    .line 77
    .line 78
    invoke-virtual {v5, v2, v6}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    :goto_0
    move-object v10, v0

    .line 90
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1$1;->b:Lcn/sharesdk/tencent/qq/ShareActivity$1;

    .line 91
    .line 92
    iget-object v5, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 93
    .line 94
    iget-object v6, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->b:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v7, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->c:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v8, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->d:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v9, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->e:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v11, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->g:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v12, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1$1;->a:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v13, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->h:Ljava/lang/String;

    .line 107
    .line 108
    iget v14, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->i:I

    .line 109
    .line 110
    iget-object v15, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->j:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v3, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->k:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v4, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->l:Ljava/lang/String;

    .line 115
    .line 116
    iget v0, v0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->a:I

    .line 117
    .line 118
    move-object/from16 v16, v3

    .line 119
    .line 120
    move-object/from16 v17, v4

    .line 121
    .line 122
    move/from16 v18, v0

    .line 123
    .line 124
    invoke-static/range {v5 .. v18}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$600(Lcn/sharesdk/tencent/qq/ShareActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_1
    move-exception v0

    .line 129
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const/4 v4, 0x1

    .line 141
    new-array v4, v4, [Ljava/lang/Object;

    .line 142
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v6, " QQ ShareActivity run catch "

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const/4 v5, 0x0

    .line 161
    aput-object v0, v4, v5

    .line 162
    .line 163
    invoke-virtual {v3, v2, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 164
    .line 165
    .line 166
    :goto_1
    return-void
.end method
