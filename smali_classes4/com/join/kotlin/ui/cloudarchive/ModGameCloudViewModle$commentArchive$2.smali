.class public final Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->commentArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001J,\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u00062\u0010\u0010\u0007\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0008H\u0016J\"\u0010\t\u001a\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2",
        "Lretrofit2/Callback;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $from:I

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;ILandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 4
    .line 5
    iput p3, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$from:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/16 v2, 0xc8

    .line 26
    .line 27
    if-ne p1, v2, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsLike(I)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    add-int/2addr v0, v1

    .line 45
    invoke-virtual {p2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setLikeCount(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p2, v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setLikeCount(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    .line 60
    .line 61
    const/16 v2, 0xa

    .line 62
    .line 63
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 64
    .line 65
    invoke-direct {v0, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$from:I

    .line 91
    .line 92
    if-ne p2, v1, :cond_2

    .line 93
    .line 94
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$context:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    sget-object v0, Lcom/papa/sim/statistic/Event;->giveCloudLike:Lcom/papa/sim/statistic/Event;

    .line 101
    .line 102
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 103
    .line 104
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v2, "1"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 114
    .line 115
    if-eqz v2, :cond_1

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    :cond_1
    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$context:Landroid/content/Context;

    .line 130
    .line 131
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    sget-object v0, Lcom/papa/sim/statistic/Event;->giveCloudLike:Lcom/papa/sim/statistic/Event;

    .line 136
    .line 137
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 138
    .line 139
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "2"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 149
    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :cond_3
    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle$commentArchive$2;->$context:Landroid/content/Context;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    .line 175
    .line 176
    if-eqz p2, :cond_5

    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :cond_5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_0
    return-void
.end method
