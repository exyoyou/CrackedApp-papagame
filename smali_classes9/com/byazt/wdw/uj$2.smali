.class public Lcom/byazt/wdw/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wdw/uj;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/wdw/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/wdw/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/uj$2;->c:Lcom/byazt/wdw/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u8df3\u8f6c\u5fae\u4fe1\u5931\u8d25\u3002"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/16 v3, 0x11

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/byazt/nr/h;->tt(Landroid/content/Context;Ljava/lang/String;IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
