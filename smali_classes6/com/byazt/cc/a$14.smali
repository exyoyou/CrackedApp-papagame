.class public Lcom/byazt/cc/a$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x585
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a;->c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cc/a$c;

.field public final synthetic tt:Lcom/byazt/im/x;

.field public final synthetic ve:Lcom/byazt/cc/a;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;Lcom/byazt/cc/a$c;Lcom/byazt/im/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$14;->ve:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/a$14;->c:Lcom/byazt/cc/a$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/cc/a$14;->tt:Lcom/byazt/im/x;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/a$14;->c:Lcom/byazt/cc/a$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/cc/a$14;->tt:Lcom/byazt/im/x;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/x;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
