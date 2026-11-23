.class public Lcom/byazt/jb/sp$3;
.super Lcom/byazt/kh/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x254
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jb/sp;->c(ZIILcom/byazt/jb/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/jb/sp;

.field public final synthetic c:Z

.field public final synthetic n:Lcom/byazt/jb/t;

.field public final synthetic uj:I

.field public final synthetic ve:I


# direct methods
.method public varargs constructor <init>(Lcom/byazt/jb/sp;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/byazt/jb/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jb/sp$3;->a:Lcom/byazt/jb/sp;

    .line 2
    .line 3
    iput-boolean p4, p0, Lcom/byazt/jb/sp$3;->c:Z

    .line 4
    .line 5
    iput p5, p0, Lcom/byazt/jb/sp$3;->ve:I

    .line 6
    .line 7
    iput p6, p0, Lcom/byazt/jb/sp$3;->uj:I

    .line 8
    .line 9
    iput-object p7, p0, Lcom/byazt/jb/sp$3;->n:Lcom/byazt/jb/t;

    .line 10
    .line 11
    invoke-direct {p0, p2, p3}, Lcom/byazt/kh/tt;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public ve()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jb/sp$3;->a:Lcom/byazt/jb/sp;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/byazt/jb/sp$3;->c:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/jb/sp$3;->ve:I

    .line 6
    .line 7
    iget v3, p0, Lcom/byazt/jb/sp$3;->uj:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/jb/sp$3;->n:Lcom/byazt/jb/t;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/jb/sp;->tt(ZIILcom/byazt/jb/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    return-void
.end method
