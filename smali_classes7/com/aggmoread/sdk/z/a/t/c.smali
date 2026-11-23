.class public abstract Lcom/aggmoread/sdk/z/a/t/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/t/c$b;
    }
.end annotation


# instance fields
.field private a:Lcom/aggmoread/sdk/z/a/t/g;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/t/c;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/a/t/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/c;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/c;->a:Lcom/aggmoread/sdk/z/a/t/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/g;->b()V

    :cond_0
    return-void
.end method

.method public abstract a(Landroid/app/Activity;)V
.end method

.method public a(Landroid/app/Activity;Lcom/aggmoread/sdk/z/a/t/d;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/c;->b:Ljava/lang/String;

    iput-object v0, p2, Lcom/aggmoread/sdk/z/a/t/d;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/t/c;->a:Lcom/aggmoread/sdk/z/a/t/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/t/g;->a()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/t/c;->a(Landroid/app/Activity;)V

    invoke-virtual {p0, p2}, Lcom/aggmoread/sdk/z/a/t/c;->a(Lcom/aggmoread/sdk/z/a/t/d;)V

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/a/t/c;->b()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/aggmoread/sdk/z/a/t/g$b;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/aggmoread/sdk/z/a/t/g;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/z/a/t/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/a/t/c;->a:Lcom/aggmoread/sdk/z/a/t/g;

    new-instance p1, Lcom/aggmoread/sdk/z/a/t/c$a;

    invoke-direct {p1, p0, p3}, Lcom/aggmoread/sdk/z/a/t/c$a;-><init>(Lcom/aggmoread/sdk/z/a/t/c;Lcom/aggmoread/sdk/z/a/t/g$b;)V

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/t/g;->a(Lcom/aggmoread/sdk/z/a/t/g$b;)V

    return-void
.end method

.method public abstract a(Lcom/aggmoread/sdk/z/a/t/d;)V
.end method

.method public abstract b()Landroid/view/View;
.end method
