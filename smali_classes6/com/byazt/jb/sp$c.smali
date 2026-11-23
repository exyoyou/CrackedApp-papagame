.class public Lcom/byazt/jb/sp$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0xb4
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/jb/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/byazt/jb/u;

.field public c:Ljava/net/Socket;

.field public n:Lcom/byazt/jb/sp$tt;

.field public sp:Z

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/mk/uj;

.field public ve:Lcom/byazt/mk/n;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/byazt/jb/sp$tt;->a:Lcom/byazt/jb/sp$tt;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/jb/sp$c;->n:Lcom/byazt/jb/sp$tt;

    .line 7
    .line 8
    sget-object v0, Lcom/byazt/jb/u;->c:Lcom/byazt/jb/u;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/jb/sp$c;->a:Lcom/byazt/jb/u;

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/byazt/jb/sp$c;->sp:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/jb/sp$tt;)Lcom/byazt/jb/sp$c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/jb/sp$c;->n:Lcom/byazt/jb/sp$tt;

    return-object p0
.end method

.method public c(Ljava/net/Socket;Ljava/lang/String;Lcom/byazt/mk/n;Lcom/byazt/mk/uj;)Lcom/byazt/jb/sp$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jb/sp$c;->c:Ljava/net/Socket;

    .line 2
    iput-object p2, p0, Lcom/byazt/jb/sp$c;->tt:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/byazt/jb/sp$c;->ve:Lcom/byazt/mk/n;

    .line 4
    iput-object p4, p0, Lcom/byazt/jb/sp$c;->uj:Lcom/byazt/mk/uj;

    return-object p0
.end method

.method public c()Lcom/byazt/jb/sp;
    .locals 1

    .line 6
    new-instance v0, Lcom/byazt/jb/sp;

    invoke-direct {v0, p0}, Lcom/byazt/jb/sp;-><init>(Lcom/byazt/jb/sp$c;)V

    return-object v0
.end method
