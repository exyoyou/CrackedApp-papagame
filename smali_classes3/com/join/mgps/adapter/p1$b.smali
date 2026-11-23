.class Lcom/join/mgps/adapter/p1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field c:Landroid/widget/FrameLayout;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/RelativeLayout;

.field f:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic g:Lcom/join/mgps/adapter/p1;


# direct methods
.method private constructor <init>(Lcom/join/mgps/adapter/p1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/p1$b;->g:Lcom/join/mgps/adapter/p1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/adapter/p1;Lcom/join/mgps/adapter/p1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/p1$b;-><init>(Lcom/join/mgps/adapter/p1;)V

    return-void
.end method
