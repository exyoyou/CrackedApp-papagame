.class public final synthetic Lcom/haima/hmcp/rtc/widgets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/Response$ErrorListener;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/rtc/widgets/RtcModel$1;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/rtc/widgets/RtcModel$1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/b;->b:Lcom/haima/hmcp/rtc/widgets/RtcModel$1;

    iput-boolean p2, p0, Lcom/haima/hmcp/rtc/widgets/b;->c:Z

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/b;->b:Lcom/haima/hmcp/rtc/widgets/RtcModel$1;

    iget-boolean v1, p0, Lcom/haima/hmcp/rtc/widgets/b;->c:Z

    invoke-static {v0, v1, p1}, Lcom/haima/hmcp/rtc/widgets/RtcModel$1;->a(Lcom/haima/hmcp/rtc/widgets/RtcModel$1;ZLcom/haima/hmcp/volley/VolleyError;)V

    return-void
.end method
