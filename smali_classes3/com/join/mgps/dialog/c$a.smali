.class Lcom/join/mgps/dialog/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/dialog/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/c;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/c$a;->c:Lcom/join/mgps/dialog/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/c$a;->c:Lcom/join/mgps/dialog/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/c;->a(Lcom/join/mgps/dialog/c;)Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance p1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/dto/SingleGameAdBean;

    .line 29
    .line 30
    sget v1, Lcom/MApplication;->i1:I

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/dto/SingleGameAdBean;-><init>(IJ)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/dialog/c$a;->c:Lcom/join/mgps/dialog/c;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/join/mgps/dialog/c;->b(Lcom/join/mgps/dialog/c;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->c:Lcom/join/mgps/dialog/c;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/join/mgps/dialog/c;->a(Lcom/join/mgps/dialog/c;)Lcom/join/mgps/pref/PrefDef_;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v1, 0x2

    .line 84
    new-array v1, v1, [Ljava/lang/Class;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    const-class v3, Ljava/lang/String;

    .line 88
    .line 89
    aput-object v3, v1, v2

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    const-class v3, Lcom/join/mgps/dto/SingleGameAdBean;

    .line 93
    .line 94
    aput-object v3, v1, v2

    .line 95
    .line 96
    const-class v2, Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Ljava/util/Map;

    .line 111
    .line 112
    new-instance v0, Lcom/join/mgps/dto/SingleGameAdBean;

    .line 113
    .line 114
    sget v1, Lcom/MApplication;->i1:I

    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/dto/SingleGameAdBean;-><init>(IJ)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/join/mgps/dialog/c$a;->c:Lcom/join/mgps/dialog/c;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/join/mgps/dialog/c;->b(Lcom/join/mgps/dialog/c;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->c:Lcom/join/mgps/dialog/c;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/join/mgps/dialog/c;->a(Lcom/join/mgps/dialog/c;)Lcom/join/mgps/pref/PrefDef_;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/c$a;->c:Lcom/join/mgps/dialog/c;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lcom/join/android/app/component/album/lib/ImageLoader;->q()Lcom/join/android/app/component/album/lib/ImageLoader;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    if-nez p1, :cond_1

    .line 173
    .line 174
    iget-object p1, p0, Lcom/join/mgps/dialog/c$a;->c:Lcom/join/mgps/dialog/c;

    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {p1, v0}, Lcom/join/mgps/dialog/c;->c(Lcom/join/mgps/dialog/c;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->c:Lcom/join/mgps/dialog/c;

    .line 187
    .line 188
    invoke-static {v0}, Lcom/join/mgps/dialog/c;->d(Lcom/join/mgps/dialog/c;)Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iget-object v2, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/Util/j2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method
