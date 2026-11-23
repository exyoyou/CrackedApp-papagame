.class public Lcom/byazt/omf/ve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x187
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/ve;->c(ZLandroid/content/Context;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic uj:Lcom/byazt/omf/ve;

.field public final synthetic ve:Z


# direct methods
.method public constructor <init>(Lcom/byazt/omf/ve;ZLandroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/ve$4;->uj:Lcom/byazt/omf/ve;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/omf/ve$4;->c:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/ve$4;->tt:Landroid/content/Context;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/byazt/omf/ve$4;->ve:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/omf/ve$4;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/omf/ve$4;->tt:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/nr/gt;->c(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/n;)Lcom/byazt/ogz/x;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/byazt/ogz/x;->uj()V

    .line 25
    .line 26
    .line 27
    const-string v0, "TTAdSdk"

    .line 28
    .line 29
    const-string v1, "Load setting in main process"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/n;)Lcom/byazt/ogz/x;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/byazt/ogz/x;->uj()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/byazt/omf/ve$4;->ve:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-static {}, Lcom/byazt/ukr/tt;->uj()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method
