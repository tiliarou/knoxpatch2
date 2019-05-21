package com.android.server.pm;

import lanchon.dexpatcher.annotation.*;
import android.util.Log;

@DexEdit
public class PersonaServiceHelper {
  @DexReplace
  private static boolean isTimaSupported() {
    Log.d("ICCC_PATCH", "isTimaSupported() called!!!");
    return false;
  }
}
