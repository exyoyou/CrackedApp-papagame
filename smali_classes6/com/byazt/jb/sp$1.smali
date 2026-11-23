.class public Lcom/byazt/jb/sp$1;
.super Lcom/byazt/kh/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jb/sp;->c(ILcom/byazt/jb/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic uj:Lcom/byazt/jb/sp;

.field public final synthetic ve:Lcom/byazt/jb/tt;


# direct methods
.method public varargs constructor <init>(Lcom/byazt/jb/sp;Ljava/lang/String;[Ljava/lang/Object;ILcom/byazt/jb/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jb/sp$1;->uj:Lcom/byazt/jb/sp;

    .line 2
    .line 3
    iput p4, p0, Lcom/byazt/jb/sp$1;->c:I

    .line 4
    .line 5
    iput-object p5, p0, Lcom/byazt/jb/sp$1;->ve:Lcom/byazt/jb/tt;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/byazt/kh/tt;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public ve()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/jb/sp$1;->uj:Lcom/byazt/jb/sp;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/jb/sp$1;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/jb/sp$1;->ve:Lcom/byazt/jb/tt;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/byazt/jb/sp;->tt(ILcom/byazt/jb/tt;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void
.end method
