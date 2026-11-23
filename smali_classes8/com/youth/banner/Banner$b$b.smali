.class Lcom/youth/banner/Banner$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youth/banner/Banner$b;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/youth/banner/Banner$b;


# direct methods
.method constructor <init>(Lcom/youth/banner/Banner$b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner$b$b;->c:Lcom/youth/banner/Banner$b;

    .line 2
    .line 3
    iput p2, p0, Lcom/youth/banner/Banner$b$b;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/youth/banner/Banner$b$b;->c:Lcom/youth/banner/Banner$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/youth/banner/Banner$b;->a:Lcom/youth/banner/Banner;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/youth/banner/Banner;->k(Lcom/youth/banner/Banner;)Lya/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/youth/banner/Banner$b$b;->c:Lcom/youth/banner/Banner$b;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/youth/banner/Banner$b;->a:Lcom/youth/banner/Banner;

    .line 12
    .line 13
    iget v1, p0, Lcom/youth/banner/Banner$b$b;->b:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->L(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p1, v0}, Lya/b;->OnBannerClick(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
