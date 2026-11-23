.class Lcom/join/mgps/adapter/c7$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/c7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/join/mgps/adapter/c7;


# direct methods
.method private constructor <init>(Lcom/join/mgps/adapter/c7;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/c7$b;->c:Lcom/join/mgps/adapter/c7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/adapter/c7;Lcom/join/mgps/adapter/c7$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/c7$b;-><init>(Lcom/join/mgps/adapter/c7;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c7$b;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c7$b;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iv"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c7$b;->a:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-void
.end method

.method public d(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tv"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c7$b;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method
