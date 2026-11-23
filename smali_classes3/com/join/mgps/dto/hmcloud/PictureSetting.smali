.class public final Lcom/join/mgps/dto/hmcloud/PictureSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000e\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000e\"\u0004\u0008\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u000e\"\u0004\u0008!\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lcom/join/mgps/dto/hmcloud/PictureSetting;",
        "",
        "<init>",
        "()V",
        "frame_rate",
        "",
        "getFrame_rate",
        "()Ljava/lang/Integer;",
        "setFrame_rate",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "ico",
        "",
        "getIco",
        "()Ljava/lang/String;",
        "name",
        "getName",
        "setName",
        "(Ljava/lang/String;)V",
        "resolution",
        "getResolution",
        "setResolution",
        "show_frame_mark",
        "",
        "getShow_frame_mark",
        "()Z",
        "setShow_frame_mark",
        "(Z)V",
        "vip_require",
        "getVip_require",
        "setVip_require",
        "id",
        "getId",
        "setId",
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
.field private frame_rate:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ico:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resolution:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private show_frame_mark:Z

.field private vip_require:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->resolution:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getFrame_rate()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->frame_rate:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIco()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->ico:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResolution()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->resolution:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShow_frame_mark()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->show_frame_mark:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getVip_require()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->vip_require:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setFrame_rate(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->frame_rate:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->name:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setResolution(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->resolution:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setShow_frame_mark(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->show_frame_mark:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setVip_require(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/hmcloud/PictureSetting;->vip_require:Z

    .line 2
    .line 3
    return-void
.end method
