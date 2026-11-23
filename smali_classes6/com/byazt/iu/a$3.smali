.class public Lcom/byazt/iu/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0x188
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/a;->c(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/iu/a;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/a;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/a$3;->ve:Lcom/byazt/iu/a;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/iu/a$3;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iu/a$3;->tt:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/iu/a$3;->ve:Lcom/byazt/iu/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/iu/a;->c(Lcom/byazt/iu/a;)Lcom/byazt/iu/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/iu/a$3;->ve:Lcom/byazt/iu/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/iu/a;->c(Lcom/byazt/iu/a;)Lcom/byazt/iu/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/byazt/iu/a$3;->c:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/byazt/iu/a$3;->tt:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Lcom/byazt/iu/n;->c(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
