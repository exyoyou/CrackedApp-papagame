.class public Lcom/byazt/ouz/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/jlk/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/sp;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ouz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/sp$1;->c:Lcom/byazt/ouz/sp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/byazt/or/da$c;Ljava/lang/String;)Lcom/byazt/six/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/sp$1;->c:Lcom/byazt/ouz/sp;

    invoke-static {v0}, Lcom/byazt/ouz/sp;->c(Lcom/byazt/ouz/sp;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/byazt/six/tt;->c(Ljava/lang/String;Lcom/byazt/or/da$c;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/six/c;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
