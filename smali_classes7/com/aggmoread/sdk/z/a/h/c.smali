.class public Lcom/aggmoread/sdk/z/a/h/c;
.super Lcom/aggmoread/sdk/z/a/i/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/h/c$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/i/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aggmoread/sdk/z/a/h/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/aggmoread/sdk/z/a/h/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/aggmoread/sdk/z/a/i/h;)V
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/a/h/c$a;

    invoke-direct {v0, p0, p1}, Lcom/aggmoread/sdk/z/a/h/c$a;-><init>(Lcom/aggmoread/sdk/z/a/h/c;Lcom/aggmoread/sdk/z/a/i/h;)V

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/m/p;->a(Ljava/lang/Runnable;)V

    return-void
.end method
