.class public Lcom/byazt/de/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6f,
        0x97
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/de/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public c:Landroid/app/Activity;

.field public n:Ljava/lang/String;

.field public sp:Lcom/byazt/de/uj;

.field public tt:Ljava/lang/String;

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Lcom/byazt/de/ve;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/de/n$c;->c:Landroid/app/Activity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/de/uj;)Lcom/byazt/de/n$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/de/n$c;->sp:Lcom/byazt/de/uj;

    return-object p0
.end method

.method public c(Lcom/byazt/de/ve;)Lcom/byazt/de/n$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/de/n$c;->x:Lcom/byazt/de/ve;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/de/n$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/de/n$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/de/n$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/de/n$c;->a:Z

    return-object p0
.end method

.method public c()Lcom/byazt/de/n;
    .locals 10

    .line 5
    new-instance v9, Lcom/byazt/de/n;

    iget-object v1, p0, Lcom/byazt/de/n$c;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/byazt/de/n$c;->tt:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/de/n$c;->ve:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/de/n$c;->uj:Ljava/lang/String;

    iget-object v5, p0, Lcom/byazt/de/n$c;->n:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/byazt/de/n$c;->a:Z

    iget-object v7, p0, Lcom/byazt/de/n$c;->sp:Lcom/byazt/de/uj;

    iget-object v8, p0, Lcom/byazt/de/n$c;->x:Lcom/byazt/de/ve;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/byazt/de/n;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/de/uj;Lcom/byazt/de/ve;)V

    return-object v9
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/de/n$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/de/n$c;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/de/n$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/de/n$c;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/de/n$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/de/n$c;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
