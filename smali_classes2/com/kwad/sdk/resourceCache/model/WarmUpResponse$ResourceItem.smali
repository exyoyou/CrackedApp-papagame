.class public Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/resourceCache/model/WarmUpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6c25cbdfbd14d442L


# instance fields
.field public cachePath:Ljava/lang/String;

.field public downloadSize:D

.field public endTime:J

.field public isCached:Z

.field public isZip:Z

.field public md5:Ljava/lang/String;

.field public md5FileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public priority:I

.field public resourceKey:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public zipDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->isCached:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->isZip:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->md5FileMap:Ljava/util/HashMap;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string v0, "md5FileMap"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "resourceKey"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->resourceKey:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "priority"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->priority:I

    .line 21
    .line 22
    const-string v1, "downloadSize"

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iput-wide v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->downloadSize:D

    .line 31
    .line 32
    const-string v1, "url"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->url:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "md5"

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->md5:Ljava/lang/String;

    .line 47
    .line 48
    const-string v1, "endTime"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    iput-wide v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->endTime:J

    .line 55
    .line 56
    const-string v1, "cachePath"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->cachePath:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "isCached"

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iput-boolean v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->isCached:Z

    .line 71
    .line 72
    const-string v1, "isZip"

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iput-boolean v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->isZip:Z

    .line 79
    .line 80
    const-string v1, "zipDir"

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iput-object v1, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->zipDir:Ljava/lang/String;

    .line 87
    .line 88
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_1

    .line 97
    .line 98
    new-instance v1, Lorg/json/JSONObject;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->md5FileMap:Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    return-void

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    invoke-static {p1}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    sget-object v0, Lcom/kwad/sdk/core/d/a;->pe:Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_2

    .line 145
    .line 146
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "resourceKey"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->resourceKey:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "priority"

    .line 14
    .line 15
    iget v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->priority:I

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string v1, "downloadSize"

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->downloadSize:D

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 25
    .line 26
    .line 27
    const-string v1, "url"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->url:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "md5"

    .line 35
    .line 36
    iget-object v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->md5:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "endTime"

    .line 42
    .line 43
    iget-wide v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->endTime:J

    .line 44
    .line 45
    invoke-static {v0, v1, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    const-string v1, "cachePath"

    .line 49
    .line 50
    iget-object v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->cachePath:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "isCached"

    .line 56
    .line 57
    iget-boolean v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->isCached:Z

    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    const-string v1, "isZip"

    .line 63
    .line 64
    iget-boolean v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->isZip:Z

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v1, "zipDir"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->zipDir:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/kwad/sdk/resourceCache/model/WarmUpResponse$ResourceItem;->md5FileMap:Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "md5FileMap"

    .line 84
    .line 85
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    .line 94
    sget-object v2, Lcom/kwad/sdk/core/d/a;->pe:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_0

    .line 101
    .line 102
    invoke-static {v1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :cond_0
    :goto_0
    return-object v0
.end method
