.class public final Lcom/byazt/omf/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hy/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;I)Lcom/byazt/ete/ic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/c$1;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/c$1;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0, p1}, Lcom/byazt/ete/ic;->tt(Lorg/json/JSONObject;)V

    return-void
.end method
