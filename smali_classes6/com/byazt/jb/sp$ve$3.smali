.class public Lcom/byazt/jb/sp$ve$3;
.super Lcom/byazt/kh/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x1dd
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jb/sp$ve;->c(Lcom/byazt/jb/yp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/jb/yp;

.field public final synthetic ve:Lcom/byazt/jb/sp$ve;


# direct methods
.method public varargs constructor <init>(Lcom/byazt/jb/sp$ve;Ljava/lang/String;[Ljava/lang/Object;Lcom/byazt/jb/yp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jb/sp$ve$3;->ve:Lcom/byazt/jb/sp$ve;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/byazt/jb/sp$ve$3;->c:Lcom/byazt/jb/yp;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/byazt/kh/tt;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ve()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jb/sp$ve$3;->ve:Lcom/byazt/jb/sp$ve;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/jb/sp$ve;->ve:Lcom/byazt/jb/sp;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/byazt/jb/sp;->m:Lcom/byazt/jb/da;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/jb/sp$ve$3;->c:Lcom/byazt/jb/yp;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/jb/da;->c(Lcom/byazt/jb/yp;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    return-void
.end method
