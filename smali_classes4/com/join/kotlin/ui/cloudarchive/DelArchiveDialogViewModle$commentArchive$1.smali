.class public final Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->commentArchive(Landroid/content/Context;Ljava/lang/String;)V
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
        "com/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1",
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
.field final synthetic $archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $type:Ljava/lang/String;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$type:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$context:Landroid/content/Context;

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

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "t"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->isCommitLoding()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "\u8bc4\u4ef7\u5f02\u5e38\uff01"

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
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
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->isCommitLoding()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/16 v2, 0xc8

    .line 37
    .line 38
    if-ne p1, v2, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getListenr()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1, v1}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;->onSendMessageFinish(I)V

    .line 52
    .line 53
    .line 54
    const-string p1, "LIKE"

    .line 55
    .line 56
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$type:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/16 p2, 0xa

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsLike(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 78
    .line 79
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 81
    .line 82
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    add-int/2addr v2, v1

    .line 89
    invoke-virtual {p1, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setLikeCount(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getLikeCount()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setLikeCount(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 106
    .line 107
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 110
    .line 111
    invoke-direct {v0, p2, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_1
    const-string p1, "NEGATIVE"

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$type:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 129
    .line 130
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setIsUnLike(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 138
    .line 139
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 140
    .line 141
    move-object v0, p1

    .line 142
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 143
    .line 144
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    add-int/2addr v2, v1

    .line 151
    invoke-virtual {p1, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setNegativeCount(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getNegativeCount()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setNegativeCount(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$archiveData:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 168
    .line 169
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 172
    .line 173
    invoke-direct {v0, p2, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;-><init>(ILcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;->getListenr()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-interface {p1, v0}, Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;->onSendMessageFinish(I)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle$commentArchive$1;->$context:Landroid/content/Context;

    .line 190
    .line 191
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Lcom/join/mgps/dto/ResponseModel;

    .line 200
    .line 201
    if-eqz p2, :cond_3

    .line 202
    .line 203
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    goto :goto_1

    .line 208
    :cond_3
    const/4 p2, 0x0

    .line 209
    :goto_1
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_4
    :goto_2
    return-void
.end method
