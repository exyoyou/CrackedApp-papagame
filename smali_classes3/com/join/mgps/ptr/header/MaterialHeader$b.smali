.class Lcom/join/mgps/ptr/header/MaterialHeader$b;
.super Lcom/join/mgps/ptr/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/header/MaterialHeader;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/MaterialHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/MaterialHeader$b;->g:Lcom/join/mgps/ptr/header/MaterialHeader;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/MaterialHeader$b;->g:Lcom/join/mgps/ptr/header/MaterialHeader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/ptr/header/MaterialHeader;->i(Lcom/join/mgps/ptr/header/MaterialHeader;)Landroid/view/animation/Animation;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
