.class public Lcom/byazt/di/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x159,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/c;->c(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/di/c;


# direct methods
.method public constructor <init>(Lcom/byazt/di/c;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/c$2;->tt:Lcom/byazt/di/c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/di/c$2;->c:J

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
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/di/c;->c()Lcom/byazt/di/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/byazt/di/c$2;->c:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/byazt/di/c;->c(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
