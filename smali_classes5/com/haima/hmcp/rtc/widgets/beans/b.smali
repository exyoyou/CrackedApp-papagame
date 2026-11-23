.class public final synthetic Lcom/haima/hmcp/rtc/widgets/beans/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/b;->b:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    iput-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/b;->b:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->a(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Ljava/lang/String;)V

    return-void
.end method
