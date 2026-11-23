.class public Lcom/byazt/ouz/yv$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x910
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/yv;->tt(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/ouz/yv;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/yv;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/yv$4;->tt:Lcom/byazt/ouz/yv;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/ouz/yv$4;->c:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/yv$4;->tt:Lcom/byazt/ouz/yv;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/byazt/ouz/yv$4;->c:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/ouz/yv;->tt(Lcom/byazt/ouz/yv;Z)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ouz/yv$4;->tt:Lcom/byazt/ouz/yv;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/ouz/yv;->a(Lcom/byazt/ouz/yv;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
