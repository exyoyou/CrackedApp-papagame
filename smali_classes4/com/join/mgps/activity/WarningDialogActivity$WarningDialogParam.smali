.class public final Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/WarningDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WarningDialogParam"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0007\"\u0004\u0008\u001e\u0010\tR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0007\"\u0004\u0008!\u0010\tR\u001a\u0010\"\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0019\"\u0004\u0008$\u0010\u001b\u00a8\u0006%"
    }
    d2 = {
        "Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "content",
        "getContent",
        "setContent",
        "confirm",
        "getConfirm",
        "setConfirm",
        "positive",
        "getPositive",
        "setPositive",
        "negative",
        "getNegative",
        "setNegative",
        "type",
        "",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "gameId",
        "getGameId",
        "setGameId",
        "args",
        "getArgs",
        "setArgs",
        "event",
        "getEvent",
        "setEvent",
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
.field private args:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private confirm:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private event:I

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private negative:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private positive:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->title:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->content:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "\u77e5\u9053\u4e86"

    .line 11
    .line 12
    iput-object v1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->confirm:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->positive:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "\u53d6\u6d88"

    .line 17
    .line 18
    iput-object v1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->negative:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->gameId:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->args:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getArgs()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->args:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConfirm()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->confirm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEvent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->event:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNegative()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->negative:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPositive()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->positive:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final setArgs(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->args:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setConfirm(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->confirm:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->content:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setEvent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->event:I

    .line 2
    .line 3
    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNegative(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->negative:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPositive(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->positive:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->title:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->type:I

    .line 2
    .line 3
    return-void
.end method
