.class public final Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$1;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$1",
        "Lcom/join/mgps/base/decoration/UniversalItemDecoration;",
        "getItemOffsets",
        "Lcom/join/mgps/base/decoration/UniversalItemDecoration$Decoration;",
        "position",
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
.field final synthetic $horizontalPadding:I

.field final synthetic $verticalSpacing:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$1;->$horizontalPadding:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$1;->$verticalSpacing:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/join/mgps/base/decoration/b$b;
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/base/decoration/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$1;->$horizontalPadding:I

    .line 7
    .line 8
    iget v2, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$1;->$verticalSpacing:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput v3, v0, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 12
    .line 13
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 14
    .line 15
    iput v1, v0, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    move v3, v2

    .line 20
    :cond_0
    iput v3, v0, Lcom/join/mgps/base/decoration/b$b;->c:I

    .line 21
    .line 22
    iput v2, v0, Lcom/join/mgps/base/decoration/b$b;->d:I

    .line 23
    .line 24
    return-object v0
.end method
