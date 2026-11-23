.class public final synthetic Lcom/haima/hmcp/rtc/widgets/beans/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->b:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    iput-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->c:Ljava/lang/String;

    iput p3, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->d:I

    iput p4, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->e:I

    iput p5, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->b:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;

    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->c:Ljava/lang/String;

    iget v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->d:I

    iget v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->e:I

    iget v4, p0, Lcom/haima/hmcp/rtc/widgets/beans/a;->f:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->b(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Ljava/lang/String;III)V

    return-void
.end method
