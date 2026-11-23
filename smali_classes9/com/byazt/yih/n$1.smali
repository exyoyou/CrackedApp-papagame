.class public Lcom/byazt/yih/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2da,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yih/n;->c(Lcom/byazt/qt/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qt/c;

.field public final synthetic tt:Lcom/byazt/yih/n;


# direct methods
.method public constructor <init>(Lcom/byazt/yih/n;Lcom/byazt/qt/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yih/n$1;->tt:Lcom/byazt/yih/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/yih/n$1;->c:Lcom/byazt/qt/c;

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
    iget-object v0, p0, Lcom/byazt/yih/n$1;->tt:Lcom/byazt/yih/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/yih/n$1;->c:Lcom/byazt/qt/c;

    .line 4
    .line 5
    const-string v2, "startUnInstallNotification"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/yih/n;->c(Lcom/byazt/yih/n;Lcom/byazt/qt/c;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
