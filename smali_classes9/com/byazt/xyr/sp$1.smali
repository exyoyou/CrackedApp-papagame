.class public Lcom/byazt/xyr/sp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x219,
        0x87
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xyr/sp;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xyr/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/xyr/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xyr/sp$1;->c:Lcom/byazt/xyr/sp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xyr/sp$1;->c:Lcom/byazt/xyr/sp;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/byazt/xyr/sp;->c(Lcom/byazt/xyr/sp;Landroid/hardware/SensorEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
