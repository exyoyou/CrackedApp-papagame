.class public final Lcom/join/mgps/dto/hmcloud/GameButtonTips;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/join/mgps/dto/hmcloud/GameButtonTips;",
        "",
        "<init>",
        "()V",
        "tips_switch",
        "",
        "getTips_switch",
        "()Ljava/lang/Boolean;",
        "setTips_switch",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "explain_switch",
        "getExplain_switch",
        "setExplain_switch",
        "default_position",
        "",
        "getDefault_position",
        "()Ljava/lang/String;",
        "setDefault_position",
        "(Ljava/lang/String;)V",
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
.field private default_position:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private explain_switch:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tips_switch:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getDefault_position()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->default_position:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExplain_switch()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->explain_switch:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTips_switch()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->tips_switch:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setDefault_position(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->default_position:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExplain_switch(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->explain_switch:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setTips_switch(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/GameButtonTips;->tips_switch:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method
