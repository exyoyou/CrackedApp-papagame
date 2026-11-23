.class public Lcom/byazt/bb/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/c;->c(Ljava/util/Map;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/bb/c;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/c;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/c$1;->ve:Lcom/byazt/bb/c;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/bb/c$1;->c:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/bb/c$1;->tt:Ljava/lang/String;

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
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bb/c$1;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/bb/c$1;->ve:Lcom/byazt/bb/c;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/byazt/bb/c;->ve:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/bb/c$1;->tt:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/16 v4, 0x11

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/byazt/nr/h;->tt(Landroid/content/Context;Ljava/lang/String;IIII)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/bb/c$1;->ve:Lcom/byazt/bb/c;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/byazt/bb/c;->ve:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/byazt/bb/c$1;->tt:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v1, v2}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
