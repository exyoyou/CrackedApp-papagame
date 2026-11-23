.class public abstract Lcom/byazt/vm/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vm/nu;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/byazt/vm/nu;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public tt:Lcom/byazt/vm/tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/vm/tt<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/vm/ve$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/vm/ve$1;-><init>(Lcom/byazt/vm/ve;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/vm/ve;->tt:Lcom/byazt/vm/tt;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/vm/ve;->c:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/byazt/vm/nu$c;
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/vm/nu$c;

    invoke-direct {v0}, Lcom/byazt/vm/nu$c;-><init>()V

    .line 4
    iput-object p1, v0, Lcom/byazt/vm/nu$c;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/vm/ve;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/vm/ve;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract c(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract c()Lcom/byazt/vm/zm$tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/vm/zm$tt<",
            "TSERVICE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public tt(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/byazt/vm/ve;->tt:Lcom/byazt/vm/tt;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    aput-object p1, v2, v0

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/byazt/vm/tt;->tt([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public ve(Landroid/content/Context;)Lcom/byazt/vm/nu$c;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/vm/ve;->c(Landroid/content/Context;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/vm/ve;->c()Lcom/byazt/vm/zm$tt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/byazt/vm/zm;

    .line 10
    .line 11
    invoke-direct {v2, p1, v0, v1}, Lcom/byazt/vm/zm;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/vm/zm$tt;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/byazt/vm/zm;->c()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/byazt/vm/ve;->c(Ljava/lang/String;)Lcom/byazt/vm/nu$c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
