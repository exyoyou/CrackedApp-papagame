.class public final Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$10;
.super Lcom/join/mgps/base/decoration/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->initView(Landroid/os/Bundle;)V
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
        "com/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$10",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$10;->this$0:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/base/decoration/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getItemOffsets(I)Lcom/join/mgps/base/decoration/b$b;
    .locals 2

    .line 1
    new-instance p1, Lcom/join/mgps/base/decoration/b$a;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/join/mgps/base/decoration/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p1, Lcom/join/mgps/base/decoration/b$a;->f:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$10;->this$0:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f07133d

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p1, Lcom/join/mgps/base/decoration/b$b;->a:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$10;->this$0:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p1, Lcom/join/mgps/base/decoration/b$b;->b:I

    .line 35
    .line 36
    return-object p1
.end method
