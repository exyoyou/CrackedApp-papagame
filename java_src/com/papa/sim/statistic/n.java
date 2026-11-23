package com.papa.sim.statistic;

import android.content.Context;
import com.papa.sim.statistic.db.StatisticTable;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    class a implements com.papa.sim.statistic.http.a<GameWorldResponse> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f77301a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ JoyStickConfig f77302b;

        a(Context context, JoyStickConfig joyStickConfig) {
            this.f77301a = context;
            this.f77302b = joyStickConfig;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            y7.a aVarO = y7.a.o(this.f77301a);
            StatisticTable statisticTable = new StatisticTable();
            try {
                statisticTable.setType(Event.joyStickConfigPost.name());
                statisticTable.setId(this.f77302b.getId());
                statisticTable.setArgs1(JsonMapper.getInstance().toJson(this.f77302b));
                statisticTable.setTime(this.f77302b.getUpdate_time() + "");
                y7.a.o(this.f77301a).r(statisticTable);
            } catch (Exception unused) {
                exc.printStackTrace();
                Event event = Event.setpapaerror;
                if (aVarO.i(event, this.f77302b.getId() + "")) {
                    return;
                }
                s.m(this.f77301a).J(event, statisticTable.getArgs1(), this.f77302b.getId() + "");
            }
        }

        @Override // com.papa.sim.statistic.http.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(GameWorldResponse gameWorldResponse) {
            if (gameWorldResponse.getError() != 0) {
                y7.a aVarO = y7.a.o(this.f77301a);
                StatisticTable statisticTable = new StatisticTable();
                try {
                    statisticTable.setId(this.f77302b.getId());
                    statisticTable.setType(Event.joyStickConfigPost.name());
                    statisticTable.setArgs1(JsonMapper.getInstance().toJson(this.f77302b));
                    statisticTable.setTime(this.f77302b.getUpdate_time() + "");
                    y7.a.o(this.f77301a).r(statisticTable);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    Event event = Event.setpapaerror;
                    if (aVarO.i(event, this.f77302b.getId() + "")) {
                        return;
                    }
                    s.m(this.f77301a).J(event, statisticTable.getArgs1(), this.f77302b.getId() + "");
                }
            }
        }
    }

    class b implements com.papa.sim.statistic.http.a<GameWorldResponse> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f77303a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ JoyStickConfig f77304b;

        b(Context context, JoyStickConfig joyStickConfig) {
            this.f77303a = context;
            this.f77304b = joyStickConfig;
        }

        @Override // com.papa.sim.statistic.http.a
        public void a(Exception exc) {
            y7.a aVarO = y7.a.o(this.f77303a);
            StatisticTable statisticTable = new StatisticTable();
            try {
                statisticTable.setId(this.f77304b.getId());
                statisticTable.setType(Event.joyStickInfoPost.name());
                statisticTable.setArgs1(JsonMapper.getInstance().toJson(this.f77304b));
                statisticTable.setTime(this.f77304b.getUpdate_time() + "");
                y7.a.o(this.f77303a).r(statisticTable);
            } catch (Exception e10) {
                e10.printStackTrace();
                Event event = Event.setpapaerror;
                if (aVarO.i(event, this.f77304b.getId() + "")) {
                    return;
                }
                s.m(this.f77303a).J(event, statisticTable.getArgs1(), this.f77304b.getId() + "");
            }
        }

        @Override // com.papa.sim.statistic.http.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(GameWorldResponse gameWorldResponse) {
            if (gameWorldResponse.getError() != 0) {
                y7.a aVarO = y7.a.o(this.f77303a);
                StatisticTable statisticTable = new StatisticTable();
                try {
                    statisticTable.setId(this.f77304b.getId());
                    statisticTable.setType(Event.joyStickInfoPost.name());
                    statisticTable.setArgs1(JsonMapper.getInstance().toJson(this.f77304b));
                    statisticTable.setTime(this.f77304b.getUpdate_time() + "");
                    y7.a.o(this.f77303a).r(statisticTable);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    Event event = Event.setpapaerror;
                    if (aVarO.i(event, this.f77304b.getId() + "")) {
                        return;
                    }
                    s.m(this.f77303a).J(event, statisticTable.getArgs1(), this.f77304b.getId() + "");
                }
            }
        }
    }

    public static void a(Context context, JoyStickConfig joyStickConfig) {
        com.papa.sim.statistic.http.c.c().i(context, joyStickConfig, new a(context, joyStickConfig));
    }

    public static void b(Context context, JoyStickConfig joyStickConfig) {
        com.papa.sim.statistic.http.c.c().j(context, joyStickConfig, new b(context, joyStickConfig));
    }
}
