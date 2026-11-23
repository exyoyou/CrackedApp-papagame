.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;
.source "SourceFile"


# static fields
.field private static t:Ljava/lang/String; = "AMEPTAGBD"


# instance fields
.field public r:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

.field private s:Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-static {}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a()Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;

    move-result-object p1

    new-instance p2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b$a;

    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;)V

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/c$h;)Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;

    move-result-object p1

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;->s:Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;Ljava/util/List;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;->e(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;)Z
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;->q()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;->b(Lcom/aggmoread/sdk/z/c/a/a/d/b/j;)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic b(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;)Z
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/i;->q()Z

    move-result p0

    return p0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;->t:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;II)V
    .locals 0

    .line 5
    const-string p2, "203"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public l()V
    .locals 6

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->e0:Ljava/lang/Object;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->l:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    invoke-static {v1, v3, v4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Lcom/aggmoread/sdk/z/c/a/a/e/v/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    iget-object v4, v4, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->c:Lcom/aggmoread/sdk/z/c/a/a/e/f;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/b/f$c;->a0:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Lcom/aggmoread/sdk/z/c/a/a/e/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;->r:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    invoke-virtual {v3, v0}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->setAppSid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->m:I

    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;->t:Ljava/lang/String;

    const-string v1, "load ad"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->a(I)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/m;->b()V

    new-instance v0, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->h:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/b/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;->r:Lcom/baidu/mobads/sdk/api/BaiduNativeManager;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/b;->s:Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mobads/sdk/api/BaiduNativeManager;->loadExpressAd(Lcom/baidu/mobads/sdk/api/RequestParameters;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V

    return-void
.end method
