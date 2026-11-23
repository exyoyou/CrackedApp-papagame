.class public final synthetic Lcom/haima/hmcp/rtc/widgets/beans/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/c;->b:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    iput p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/c;->b:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    iget v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/c;->c:I

    invoke-static {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->c(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)V

    return-void
.end method
