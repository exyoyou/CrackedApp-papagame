.class public Lcom/haima/hmcp/beans/ReportTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/beans/ReportTimer$Action;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public action:Ljava/lang/String;

.field public duration:J

.field public isRepeat:Z

.field public timerId:Ljava/lang/String;

.field public timerKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLcom/haima/hmcp/beans/ReportTimer$Action;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/haima/hmcp/beans/ReportTimer;->timerKey:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/beans/ReportTimer;->timerId:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/haima/hmcp/beans/ReportTimer;->duration:J

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/haima/hmcp/beans/ReportTimer;->isRepeat:Z

    .line 11
    .line 12
    invoke-static {p6}, Lcom/haima/hmcp/beans/ReportTimer$Action;->access$000(Lcom/haima/hmcp/beans/ReportTimer$Action;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/haima/hmcp/beans/ReportTimer;->action:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method
