.class public Lcom/byazt/di/da$3;
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
        0x1ec
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/di/da;->c(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/di/da;


# direct methods
.method public constructor <init>(Lcom/byazt/di/da;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/di/da$3;->ve:Lcom/byazt/di/da;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/di/da$3;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/di/da$3;->tt:Z

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
    iget-object v0, p0, Lcom/byazt/di/da$3;->ve:Lcom/byazt/di/da;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/di/da;->tt(Lcom/byazt/di/da;)Lcom/byazt/di/x;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/di/da$3;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/byazt/di/da$3;->tt:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/byazt/di/x;->c(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
