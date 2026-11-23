.class Lcom/youth/banner/Banner$b$a;
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
    iput-object p1, p0, Lcom/youth/banner/Banner$b$a;->c:Lcom/youth/banner/Banner$b;

    .line 2
    .line 3
    iput p2, p0, Lcom/youth/banner/Banner$b$a;->b:I

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/youth/banner/Banner$b$a;->c:Lcom/youth/banner/Banner$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/youth/banner/Banner$b;->a:Lcom/youth/banner/Banner;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/youth/banner/Banner;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/youth/banner/Banner$b$a;->c:Lcom/youth/banner/Banner$b;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/youth/banner/Banner$b;->a:Lcom/youth/banner/Banner;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/youth/banner/Banner;->j(Lcom/youth/banner/Banner;)Lya/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget v0, p0, Lcom/youth/banner/Banner$b$a;->b:I

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lya/a;->OnBannerClick(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
